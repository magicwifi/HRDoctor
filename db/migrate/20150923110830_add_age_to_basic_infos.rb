class AddAgeToBasicInfos < ActiveRecord::Migration
  def change
    add_column :basic_infos, :age, :integer
  end
end
