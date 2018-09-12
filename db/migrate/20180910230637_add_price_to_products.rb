class AddPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :price, :integer
    add_reference :products, :category, index: true

  end
end
