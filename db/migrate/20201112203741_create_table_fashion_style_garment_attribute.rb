class CreateTableFashionStyleGarmentAttribute < ActiveRecord::Migration[6.0]
  def change
    create_table :fashion_garment_attributes do |t|
      t.references :fashion_style_garment, null: false, foreign_key: true
      t.references :garment_attribute, null: false, foreign_key: true

      t.timestamps
    end
  end
end
