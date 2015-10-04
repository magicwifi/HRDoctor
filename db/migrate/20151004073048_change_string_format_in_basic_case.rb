class ChangeStringFormatInBasicCase < ActiveRecord::Migration
  def change
    change_column :basic_cases, :now_desc, :string
  end
end
