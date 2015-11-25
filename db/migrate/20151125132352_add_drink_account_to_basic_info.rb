class AddDrinkAccountToBasicInfo < ActiveRecord::Migration
  def change
    add_column :basic_infos, :drink_account, :integer
  end
end
