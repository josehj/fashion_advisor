# frozen_string_literal: true

# == Schema Information
#
# Table name: garment_type_permitted_attribute
#
#  created_at                 :datetime         not null
#  id                         :bigint(8)        not null, primary key
#  garment_type_id            :bigint(8)        not null
#  garment_attribute_id       :bigint(8)        not null
#  updated_at                 :datetime         not null
#
class GarmentTypePermittedAttribute < ApplicationRecord
  belongs_to :garment_type
  belongs_to :garment_attribute
end
