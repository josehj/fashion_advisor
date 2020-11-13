# frozen_string_literal: true

# == Schema Information
#
# Table name: bodty_garment_attribute
#
#  created_at                 :datetime         not null
#  id                         :bigint(8)        not null, primary key
#  body_id                    :bigint(8)        not null
#  garment_attribute_id       :bigint(8)        not null
#  updated_at                 :datetime         not null
#
class BodyGarmentAttribute < ApplicationRecord
  belongs_to :body
  belongs_to :garment_attribute

end
