class AddPriceToDragon < ActiveRecord::Migration[5.2]
  def change
    add_column :dragons, :price, :integer
  end
end
