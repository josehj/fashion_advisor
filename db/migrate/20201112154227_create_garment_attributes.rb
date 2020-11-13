class CreateGarmentAttributes < ActiveRecord::Migration[6.0]
  def change
    create_table :garment_attributes do |t|
      t.string :name
      t.integer :kind

      t.timestamps
    end
  end
end
