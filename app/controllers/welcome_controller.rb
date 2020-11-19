class WelcomeController < ApplicationController
  def search
    @garment_type = GarmentType.find_by(id: params[:search][:garment_type_id])
    @fashion_style = FashionStyle.find_by(id: params[:search][:fashion_style_id])
    @body = Body.find_by(id: params[:search][:body])
    @colors = GarmentAttribute.where(id: params[:search][:color])
    @body_size = GarmentAttribute.find_by(id: params[:search][:size])

    @fashion_style_garment = FashionStyleGarment.find_by(garment_type_id: @garment_type.id, fashion_style_id: @fashion_style.id)
    @body_garment = BodyGarment.find_by(garment_type_id: @garment_type.id, body_id: @body.id)

    @garment_attributes = (@fashion_style_garment&.all_attributes || []) & (@body_garment&.all_attributes || [])
  end

  def accepted_attributes
    if params[:fashion_style_garment]
      garment_type = GarmentType.find(params[:fashion_style_garment][:garment_type_id])
      @garment_attributes_hash = garment_type.all_attributes.group_by(&:kind) || []
    else
      @garment_attributes_hash = GarmentAttribute.for_garments.group_by(&:kind) || []
    end
    @name = params[:form_name] || 'body_garment'
    render action: :accepted_attributes, layout: false
  end

  def index
  end
end
