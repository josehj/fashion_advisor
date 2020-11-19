class ChangeColumnBodyGarmentAttribute < ActiveRecord::Migration[6.0]
  def change
    BodyGarmentAttribute.delete_all
    add_reference :body_garment_attributes, :body_garment, index: true
    remove_reference :body_garment_attributes, :body
  end
end
