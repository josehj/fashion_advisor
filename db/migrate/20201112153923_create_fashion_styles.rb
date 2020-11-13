class CreateFashionStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :fashion_styles do |t|
      t.string :name

      t.timestamps
    end
  end
end
