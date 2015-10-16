class AddUrlToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :url, :string
  end
end
