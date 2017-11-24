class AddAbsoluteUrlToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :absolute_url, :string
  end
end
