# frozen_string_literal: true

# == Schema Information
#
# Table name: fashion_style_garment
#
#  created_at           :datetime         not null
#  id                   :bigint(8)        not null, primary key
#  fashion_style_id     :bigint(8)        not null
#  garment_type_id      :bigint(8)        not null
#  updated_at           :datetime         not null
#
class FashionStyleGarment < ApplicationRecord
  belongs_to :fashion_style
  belongs_to :garment_type

  has_many :fashion_garment_attributes, dependent: :destroy
  has_many :all_attributes, through: :fashion_garment_attributes, source: :garment_attribute

end
