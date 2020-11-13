class UpdateTableFashionStyleGarments < ActiveRecord::Migration[6.0]
  def change
    remove_column :fashion_style_garments, :category, :integer
    remove_column :fashion_style_garments, :name, :string
    add_column :fashion_style_garments, :garment_type_id, :integer, foreign_key: true
  end
end
