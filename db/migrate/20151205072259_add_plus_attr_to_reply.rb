class AddPlusAttrToReply < ActiveRecord::Migration
  def change
    add_column :replies, :plus_date, :datetime
    add_column :replies, :plus_department, :string
  end
end
