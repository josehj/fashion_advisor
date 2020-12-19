class FashionStyleGarmentsController < ApplicationController
  before_action :set_fashion_style_garment, only: [:show, :edit, :update, :destroy]

  # GET /fashion_style_garments
  # GET /fashion_style_garments.json
  def index
    @fashion_style_garments = FashionStyleGarment.all.includes(:fashion_style, :garment_type, :all_attributes)
  end

  # GET /fashion_style_garments/1
  # GET /fashion_style_garments/1.json
  def show
  end

  # GET /fashion_style_garments/new
  def new
    @garment_attributes_hash = GarmentAttribute.for_garments.group_by(&:kind) || []
    @fashion_style_garment = FashionStyleGarment.new
  end

  # GET /fashion_style_garments/1/edit
  def edit
    @garment_attributes_hash = @fashion_style_garment&.garment_type&.all_attributes.group_by(&:kind) || GarmentAttribute.for_garments.group_by(&:kind)
  end

  # POST /fashion_style_garments
  # POST /fashion_style_garments.json
  def create
    @fashion_style_garment = FashionStyleGarment.new(fashion_style_garment_params)
    respond_to do |format|
      if @fashion_style_garment.save
        set_garment_attributes
        format.html { redirect_to @fashion_style_garment, notice: 'Fashion style garment was successfully created.' }
        format.json { render :show, status: :created, location: @fashion_style_garment }
      else
        @garment_attributes_hash = @fashion_style_garment&.garment_type&.all_attributes.group_by(&:kind) || GarmentAttribute.for_garments.group_by(&:kind)
        format.html { render :new }
        format.json { render json: @fashion_style_garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fashion_style_garments/1
  # PATCH/PUT /fashion_style_garments/1.json
  def update
    respond_to do |format|
      if @fashion_style_garment.update(fashion_style_garment_params)
        set_garment_attributes
        format.html { redirect_to @fashion_style_garment, notice: 'Fashion style garment was successfully updated.' }
        format.json { render :show, status: :ok, location: @fashion_style_garment }
      else
        @garment_attributes_hash = @fashion_style_garment&.garment_type&.all_attributes.group_by(&:kind) || GarmentAttribute.for_garments.group_by(&:kind)
        format.html { render :edit }
        format.json { render json: @fashion_style_garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fashion_style_garments/1
  # DELETE /fashion_style_garments/1.json
  def destroy
    @fashion_style_garment.destroy
    respond_to do |format|
      format.html { redirect_to fashion_style_garments_url, notice: 'Fashion style garment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fashion_style_garment
      @fashion_style_garment = FashionStyleGarment.find(params[:id])
    end

    def set_garment_attributes
      @fashion_style_garment.all_attributes.destroy_all
      attribute_params[:attributes].each do |garment_attribute_id|
        FashionGarmentAttribute.create(garment_attribute_id: garment_attribute_id, fashion_style_garment_id: @fashion_style_garment.id)
      end
    end

    # Only allow a list of trusted parameters through.
    def fashion_style_garment_params
      params.require(:fashion_style_garment).permit(
        :fashion_style_id,
        :garment_type_id
      )
    end
    # Only allow a list of trusted parameters through.
    def attribute_params
      params.require(:fashion_style_garment).permit!
    end
end
