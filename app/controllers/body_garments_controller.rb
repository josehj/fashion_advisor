class BodyGarmentsController < ApplicationController
  before_action :set_body_garment, only: [:show, :edit, :update, :destroy]

  # GET /body_garments
  # GET /body_garments.json
  def index
    @body_garments = BodyGarment.all
  end

  # GET /body_garments/1
  # GET /body_garments/1.json
  def show
  end

  # GET /body_garments/new
  def new
    @body_garment = BodyGarment.new
    @garment_attributes_hash = GarmentAttribute.for_garments.group_by(&:kind) || []
  end

  # GET /body_garments/1/edit
  def edit
    @garment_attributes_hash = @body_garment&.garment_type&.all_attributes.group_by(&:kind) || GarmentAttribute.for_garments.group_by(&:kind)
  end

  # POST /body_garments
  # POST /body_garments.json
  def create
    @body_garment = BodyGarment.new(body_garment_params)

    respond_to do |format|
      if @body_garment.save
        set_garment_attributes
        format.html { redirect_to @body_garment, notice: 'Atributo por Cuerpo was successfully created.' }
        format.json { render :show, status: :created, location: @body_garment }
      else
        @garment_attributes_hash = @body_garment&.garment_type&.all_attributes.group_by(&:kind) || GarmentAttribute.for_garments.group_by(&:kind)
        format.html { render :new }
        format.json { render json: @body_garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /body_garments/1
  # PATCH/PUT /body_garments/1.json
  def update
    respond_to do |format|
      if @body_garment.update(body_garment_params)
        set_garment_attributes
        format.html { redirect_to @body_garment, notice: 'Atributo por Cuerpo was successfully updated.' }
        format.json { render :show, status: :ok, location: @body_garment }
      else
        @garment_attributes_hash = @fashion_style_garment&.garment_type&.all_attributes.group_by(&:kind) || GarmentAttribute.for_garments.group_by(&:kind)
        format.html { render :edit }
        format.json { render json: @body_garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /body_garments/1
  # DELETE /body_garments/1.json
  def destroy
    @body_garment.destroy
    respond_to do |format|
      format.html { redirect_to body_garments_url, notice: 'Atributo por Cuerpo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_body_garment
      @body_garment = BodyGarment.find(params[:id])
    end

    def set_garment_attributes
      @body_garment.all_attributes.destroy_all
      attribute_params[:attributes].each do |garment_attribute_id|
        BodyGarmentAttribute.create(garment_attribute_id: garment_attribute_id, body_garment_id: @body_garment.id)
      end
    end

    # Only allow a list of trusted parameters through.
    def attribute_params
      params.require(:body_garment).permit!
    end

    # Only allow a list of trusted parameters through.
    def body_garment_params
      params.require(:body_garment).permit(:body_id, :garment_type_id)
    end
end
