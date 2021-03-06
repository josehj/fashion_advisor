# frozen_string_literal: true

# == Schema Information
#
# Table name: fashion_style
#
#  created_at                 :datetime         not null
#  id                         :bigint(8)        not null, primary key
#  name                       :string
#  category                   :integer
#  updated_at                 :datetime         not null
#
class FashionStyle < ApplicationRecord

  validates :name, presence: true

  has_many :fashion_style_garment, dependent: :destroy
end
