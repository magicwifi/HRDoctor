class AddSmokeToBasicInfo < ActiveRecord::Migration
  def change
    add_column :basic_infos, :smokeinfo, :string
    add_column :basic_infos, :drink, :string
  end
end
