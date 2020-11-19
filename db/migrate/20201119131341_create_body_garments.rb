class CreateBodyGarments < ActiveRecord::Migration[6.0]
  def change
    create_table :body_garments do |t|
      t.references :body, null: false, foreign_key: true
      t.references :garment_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
