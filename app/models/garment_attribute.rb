# frozen_string_literal: true

# == Schema Information
#
# Table name: garment_attribute
#
#  created_at           :datetime         not null
#  id                   :bigint(8)        not null, primary key
#  kind                 :integer
#  name                 :string
#  updated_at           :datetime         not null
#
class GarmentAttribute < ApplicationRecord

  validates :name, presence: true
  enum kind: {
    neck: 1,
    sleeve: 2,
    top_length: 3,
    top_fit: 4,
    top_dress_fit: 16,
    fabrics: 5,
    prints: 6,
    bottom_length_jeans: 7,
    bottom_length_dress: 15,
    bottom_short_fit: 14,
    bottom_style: 8,
    jeans_fit: 9,
    top_size: 10,
    bottom_size: 11,
    details: 12,
    color: 13
  }
  translate_enum :kind

  scope :top_size, -> { where(kind: :top_size) }
  scope :bottom_size, -> { where(kind: :bottom_size) }
  scope :color, -> { where(kind: :color) }

  scope :for_garments, -> { where.not(kind: [:color, :top_size, :bottom_size]) }
end
