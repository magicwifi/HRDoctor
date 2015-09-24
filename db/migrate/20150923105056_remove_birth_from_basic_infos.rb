class RemoveBirthFromBasicInfos < ActiveRecord::Migration
  def change
    remove_column :basic_infos, :birth, :datetime
  end
end
