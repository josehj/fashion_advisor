# frozen_string_literal: true

# == Schema Information
#
# Table name: body_garment
#
#  created_at           :datetime         not null
#  id                   :bigint(8)        not null, primary key
#  body_id     :bigint(8)        not null
#  garment_type_id      :bigint(8)        not null
#  updated_at           :datetime         not null
#
class BodyGarment < ApplicationRecord
  belongs_to :body
  belongs_to :garment_type

  has_many :body_garment_attributes, dependent: :destroy
  has_many :all_attributes, through: :body_garment_attributes, source: :garment_attribute

end
