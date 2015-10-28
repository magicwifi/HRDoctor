class RemovePriceFromDoctor < ActiveRecord::Migration
  def change
    remove_column :doctors, :price, :integer
  end
end
