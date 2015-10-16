class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :avatar
      t.text :main_desc
      t.integer :price

      t.timestamps
    end
  end
end
