class BodiesController < ApplicationController
  before_action :set_body, only: [:show, :edit, :update, :destroy]

  # GET /bodies
  # GET /bodies.json
  def index
    @bodies = Body.all
  end

  # GET /bodies/1
  # GET /bodies/1.json
  def show
  end

  # GET /bodies/new
  def new
    @body = Body.new
    @garment_attributes_hash = GarmentAttribute.all.group_by(&:kind) || []
  end

  # GET /bodies/1/edit
  def edit
    @garment_attributes_hash = GarmentAttribute.all.group_by(&:kind) || []
  end

  # POST /bodies
  # POST /bodies.json
  def create
    @body = Body.new(body_params)

    respond_to do |format|
      if @body.save
        set_garment_attributes
        format.html { redirect_to @body, notice: 'Body was successfully created.' }
        format.json { render :show, status: :created, location: @body }
      else
        format.html { render :new }
        format.json { render json: @body.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bodies/1
  # PATCH/PUT /bodies/1.json
  def update
    respond_to do |format|
      if @body.update(body_params)
        set_garment_attributes
        format.html { redirect_to @body, notice: 'Body was successfully updated.' }
        format.json { render :show, status: :ok, location: @body }
      else
        format.html { render :edit }
        format.json { render json: @body.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodies/1
  # DELETE /bodies/1.json
  def destroy
    @body.destroy
    respond_to do |format|
      format.html { redirect_to bodies_url, notice: 'Body was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_body
      @body = Body.find(params[:id])
    end

    def set_garment_attributes
      @body.all_attributes.destroy_all
      attribute_params[:attributes].each do |garment_attribute_id|
        BodyGarmentAttribute.create(garment_attribute_id: garment_attribute_id, body_id: @body.id)
      end
    end

    # Only allow a list of trusted parameters through.
    def attribute_params
      params.require(:body).permit!
    end

    # Only allow a list of trusted parameters through.
    def body_params
      params.require(:body).permit(:name)
    end
end
