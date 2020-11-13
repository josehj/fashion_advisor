class FashionStylesController < ApplicationController
  before_action :set_fashion_style, only: [:show, :edit, :update, :destroy]

  # GET /fashion_styles
  # GET /fashion_styles.json
  def index
    @fashion_styles = FashionStyle.all
  end

  # GET /fashion_styles/1
  # GET /fashion_styles/1.json
  def show
  end

  # GET /fashion_styles/new
  def new
    @fashion_style = FashionStyle.new
  end

  # GET /fashion_styles/1/edit
  def edit
  end

  # POST /fashion_styles
  # POST /fashion_styles.json
  def create
    @fashion_style = FashionStyle.new(fashion_style_params)

    respond_to do |format|
      if @fashion_style.save
        format.html { redirect_to @fashion_style, notice: 'Fashion style was successfully created.' }
        format.json { render :show, status: :created, location: @fashion_style }
      else
        format.html { render :new }
        format.json { render json: @fashion_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fashion_styles/1
  # PATCH/PUT /fashion_styles/1.json
  def update
    respond_to do |format|
      if @fashion_style.update(fashion_style_params)
        format.html { redirect_to @fashion_style, notice: 'Fashion style was successfully updated.' }
        format.json { render :show, status: :ok, location: @fashion_style }
      else
        format.html { render :edit }
        format.json { render json: @fashion_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fashion_styles/1
  # DELETE /fashion_styles/1.json
  def destroy
    @fashion_style.destroy
    respond_to do |format|
      format.html { redirect_to fashion_styles_url, notice: 'Fashion style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fashion_style
      @fashion_style = FashionStyle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fashion_style_params
      params.require(:fashion_style).permit(:name)
    end
end
