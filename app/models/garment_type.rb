# frozen_string_literal: true

# == Schema Information
#
# Table name: garment_type
#
#  created_at                 :datetime         not null
#  id                         :bigint(8)        not null, primary key
#  name                       :string
#  category                   :integer
#  updated_at                 :datetime         not null
#
class GarmentType < ApplicationRecord

  validates :name, presence: true

  has_many :fashion_style_garment, dependent: :destroy
  has_many :garment_type_permitted_attributes, dependent: :destroy
  has_many :all_attributes, through: :garment_type_permitted_attributes, source: :garment_attribute
  
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
