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
    fabrics: 5,
    prints: 6,
    bottom_length: 7,
    bottom_fit: 8,
    bottom_style: 9,
    top_size: 10,
    bottom_size: 11,
    details: 12,
    color: 13
  }
  translate_enum :kind

  scope :neck, -> { where(kind: :neck) }
  scope :sleeve, -> { where(kind: :sleeve) }
  scope :top_length, -> { where(kind: :top_length) }
  scope :top_fit, -> { where(kind: :top_fit) }
  scope :fabrics, -> { where(kind: :fabrics) }
  scope :prints, -> { where(kind: :prints) }
  scope :bottom_length, -> { where(kind: :bottom_length) }
  scope :bottom_fit, -> { where(kind: :bottom_fit) }
  scope :bottom_style, -> { where(kind: :bottom_style) }
  scope :top_size, -> { where(kind: :top_size) }
  scope :bottom_size, -> { where(kind: :bottom_size) }
  scope :details, -> { where(kind: :details) }
  scope :color, -> { where(kind: :color) }
end
