class AddAllowPlusToReply < ActiveRecord::Migration
  def change
    add_column :replies, :allow_plus, :boolean, :default => false
  end
end
