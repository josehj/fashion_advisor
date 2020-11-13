class CreateFashionStyleGarments < ActiveRecord::Migration[6.0]
  def change
    create_table :fashion_style_garments do |t|
      t.string :name
      t.integer :category
      t.references :fashion_style, null: false, foreign_key: true

      t.timestamps
    end
  end
end
