class AddSmokeAccountToBasicInfo < ActiveRecord::Migration
  def change
    add_column :basic_infos, :smoke_account, :integer
  end
end
