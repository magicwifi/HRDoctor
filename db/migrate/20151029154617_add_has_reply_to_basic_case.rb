class AddHasReplyToBasicCase < ActiveRecord::Migration
  def change
    add_column :basic_cases, :has_reply, :boolean, :default=>false
  end
end
