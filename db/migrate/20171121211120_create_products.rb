class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_type
      t.string :brand
      t.string :product_model_name
      t.integer :price

      t.timestamps
    end
  end
end
