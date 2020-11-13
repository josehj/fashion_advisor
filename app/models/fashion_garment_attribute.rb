# frozen_string_literal: true

# == Schema Information
#
# Table name: fashion_garment_attribute
#
#  created_at                 :datetime         not null
#  id                         :bigint(8)        not null, primary key
#  fashion_style_garment_id   :bigint(8)        not null
#  garment_attribute_id      :bigint(8)        not null
#  updated_at                 :datetime         not null
#
class FashionGarmentAttribute < ApplicationRecord
  belongs_to :fashion_style_garment
  belongs_to :garment_attribute

end
