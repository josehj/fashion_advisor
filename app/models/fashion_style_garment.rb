# frozen_string_literal: true

# == Schema Information
#
# Table name: fashion_style_garment
#
#  created_at           :datetime         not null
#  id                   :bigint(8)        not null, primary key
#  category             :integer
#  fashion_style_id     :bigint(8)        not null
#  name                 :string
#  updated_at           :datetime         not null
#
class FashionStyleGarment < ApplicationRecord
  belongs_to :fashion_style

  validates :name, presence: true
  has_many :fashion_garment_attributes, dependent: :destroy
  has_many :all_attributes, through: :fashion_garment_attributes, source: :garment_attribute

  
  has_many :neck_attributes, -> { neck }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 
  has_many :sleeve_attributes, -> { sleeve }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 
  has_many :top_length_attributes, -> { top_length }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 
  has_many :top_fit_attributes, -> { top_fit }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 
  has_many :fabrics_attributes, -> { fabrics }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 
  has_many :prints_attributes, -> { prints }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 
  has_many :bottom_length_attributes, -> { bottom_length }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 
  has_many :bottom_fit_attributes, -> { bottom_fit }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 
  has_many :bottom_style_attributes, -> { bottom_style }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 
  has_many :garment_size_attributes, -> { garment_size }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 
  has_many :details_attributes, -> { details }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 
  has_many :color_attributes, -> { color }, class_name: 'GarmentAttribute', through: :fashion_garment_attributes, inverse_of: :fashion_style_garment 

  enum category: {
    tops: 1,
    coats: 2,
    full_body: 3,
    sweaters: 4,
    long_bottoms: 5,
    short_bottoms: 6
  }
  translate_enum :category
end
