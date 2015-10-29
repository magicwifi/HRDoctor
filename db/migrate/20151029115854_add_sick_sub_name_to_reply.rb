class AddSickSubNameToReply < ActiveRecord::Migration
  def change
    add_column :replies, :sick_sub_name, :string
  end
end
