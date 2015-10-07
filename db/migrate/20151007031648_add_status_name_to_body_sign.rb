class AddStatusNameToBodySign < ActiveRecord::Migration
  def change
    add_column :body_signs, :status_name, :text
  end
end
