class AddPhonenumToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phonenum, :string
  end
end
