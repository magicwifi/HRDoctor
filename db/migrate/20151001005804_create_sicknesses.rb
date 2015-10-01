class CreateSicknesses < ActiveRecord::Migration
  def change
    create_table :sicknesses do |t|
      t.string :title
      t.text :desc
      t.datetime :created_at
      t.datetime :updated_at
      t.string :poster
      t.boolean :public
      t.float :price
      t.string :asset
      t.integer :user_id
      t.integer :size
      t.string :filename
      t.string :content_type
      t.integer :position

      t.timestamps
    end
  end
end
