class GarmentAttributesController < ApplicationController
  before_action :set_garment_attribute, only: [:show, :edit, :update, :destroy]

  # GET /garment_attributes
  # GET /garment_attributes.json
  def index
    @garment_attributes = GarmentAttribute.all
  end

  # GET /garment_attributes/1
  # GET /garment_attributes/1.json
  def show
  end

  # GET /garment_attributes/new
  def new
    @garment_attribute = GarmentAttribute.new
  end

  # GET /garment_attributes/1/edit
  def edit
  end

  # POST /garment_attributes
  # POST /garment_attributes.json
  def create
    @garment_attribute = GarmentAttribute.new(garment_attribute_params)

    respond_to do |format|
      if @garment_attribute.save
        format.html { redirect_to @garment_attribute, notice: 'Garment attribute was successfully created.' }
        format.json { render :show, status: :created, location: @garment_attribute }
      else
        format.html { render :new }
        format.json { render json: @garment_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garment_attributes/1
  # PATCH/PUT /garment_attributes/1.json
  def update
    respond_to do |format|
      if @garment_attribute.update(garment_attribute_params)
        format.html { redirect_to @garment_attribute, notice: 'Garment attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @garment_attribute }
      else
        format.html { render :edit }
        format.json { render json: @garment_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garment_attributes/1
  # DELETE /garment_attributes/1.json
  def destroy
    @garment_attribute.destroy
    respond_to do |format|
      format.html { redirect_to garment_attributes_url, notice: 'Garment attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garment_attribute
      @garment_attribute = GarmentAttribute.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def garment_attribute_params
      params.require(:garment_attribute).permit(:name, :kind)
    end
end
