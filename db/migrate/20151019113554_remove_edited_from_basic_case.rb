class RemoveEditedFromBasicCase < ActiveRecord::Migration
  def change
    remove_column :basic_cases, :edited, :boolean
  end
end
