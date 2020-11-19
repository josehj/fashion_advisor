class GarmentTypesController < ApplicationController
  before_action :set_garment_type, only: [:show, :edit, :update, :destroy]

  # GET /garment_types
  # GET /garment_types.json
  def index
    @garment_types = GarmentType.all
  end

  # GET /garment_types/1
  # GET /garment_types/1.json
  def show
  end

  # GET /garment_types/new
  def new
    @garment_type = GarmentType.new
    @garment_attributes_hash = GarmentAttribute.for_garments.group_by(&:kind) || []
  end

  # GET /garment_types/1/edit
  def edit
    @garment_attributes_hash = GarmentAttribute.for_garments.group_by(&:kind) || []
  end

  # POST /garment_types
  # POST /garment_types.json
  def create
    @garment_type = GarmentType.new(garment_type_params)

    respond_to do |format|
      if @garment_type.save
        set_garment_attributes
        format.html { redirect_to @garment_type, notice: 'Garment type was successfully created.' }
        format.json { render :show, status: :created, location: @garment_type }
      else
        @garment_attributes_hash = GarmentAttribute.for_garments.group_by(&:kind) || []
        format.html { render :new }
        format.json { render json: @garment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garment_types/1
  # PATCH/PUT /garment_types/1.json
  def update
    respond_to do |format|
      if @garment_type.update(garment_type_params)
        set_garment_attributes
        format.html { redirect_to @garment_type, notice: 'Garment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @garment_type }
      else
        @garment_attributes_hash = GarmentAttribute.for_garments.group_by(&:kind) || []
        format.html { render :edit }
        format.json { render json: @garment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garment_types/1
  # DELETE /garment_types/1.json
  def destroy
    @garment_type.destroy
    respond_to do |format|
      format.html { redirect_to garment_types_url, notice: 'Garment type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garment_type
      @garment_type = GarmentType.find(params[:id])
    end

    def set_garment_attributes
      @garment_type.all_attributes.destroy_all
      attribute_params[:attributes].each do |garment_attribute_id|
        GarmentTypePermittedAttribute.create(garment_attribute_id: garment_attribute_id, garment_type_id: @garment_type.id)
      end
    end

    # Only allow a list of trusted parameters through.
    def attribute_params
      params.require(:garment_type).permit!
    end

    # Only allow a list of trusted parameters through.
    def garment_type_params
      params.require(:garment_type).permit(:name, :category)
    end
end
