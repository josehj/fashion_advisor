class WelcomeController < ApplicationController
  def search
    @garment_type = GarmentType.find_by(id: params[:search][:garment_type_id])
    @fashion_style = FashionStyle.find_by(id: params[:search][:fashion_style_id])
    @body = Body.find_by(id: params[:search][:body])
    @color = GarmentAttribute.find_by(id: params[:search][:color])
    @body_size = GarmentAttribute.find_by(id: params[:search][:size])

    @fashion_stype_garment = FashionStyleGarment.find_by(garment_type_id: @garment_type.id, fashion_style_id: @fashion_style.id)
    @garment_attributes = (@fashion_stype_garment&.all_attributes || []) & (@body&.all_attributes || [])
  end
end
