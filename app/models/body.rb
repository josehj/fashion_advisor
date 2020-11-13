# frozen_string_literal: true

# == Schema Information
#
# Table name: body
#
#  created_at           :datetime         not null
#  id                   :bigint(8)        not null, primary key
#  name                 :string
#  updated_at           :datetime         not null
#
class Body < ApplicationRecord

  validates :name, presence: true
  has_many :body_garment_attributes, dependent: :destroy
  has_many :all_attributes, through: :body_garment_attributes, source: :garment_attribute

  
  has_many :neck_attributes, -> { neck }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 
  has_many :sleeve_attributes, -> { sleeve }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 
  has_many :top_length_attributes, -> { top_length }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 
  has_many :top_fit_attributes, -> { top_fit }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 
  has_many :fabrics_attributes, -> { fabrics }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 
  has_many :prints_attributes, -> { prints }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 
  has_many :bottom_length_attributes, -> { bottom_length }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 
  has_many :bottom_fit_attributes, -> { bottom_fit }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 
  has_many :bottom_style_attributes, -> { bottom_style }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 
  has_many :garment_size_attributes, -> { garment_size }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 
  has_many :details_attributes, -> { details }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 
  has_many :color_attributes, -> { color }, class_name: 'GarmentAttribute', through: :body_garment_attributes, inverse_of: :body 

end
