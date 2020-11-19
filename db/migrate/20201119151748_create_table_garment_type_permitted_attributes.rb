class CreateTableGarmentTypePermittedAttributes < ActiveRecord::Migration[6.0]
  def change
    create_table :garment_type_permitted_attributes do |t|
      t.references :garment_type, null: false, foreign_key: true
      t.references :garment_attribute, null: false, foreign_key: true
    end
  end
end
