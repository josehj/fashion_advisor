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
end
