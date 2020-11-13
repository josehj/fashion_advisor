class CreateTableBodyGarmentAttribute < ActiveRecord::Migration[6.0]
  def change
    create_table :body_garment_attributes do |t|
      t.references :body, null: false, foreign_key: true
      t.references :garment_attribute, null: false, foreign_key: true

    end
  end
end
