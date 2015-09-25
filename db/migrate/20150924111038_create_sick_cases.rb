class CreateSickCases < ActiveRecord::Migration
  def change
    create_table :sick_cases do |t|
      t.string :name
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at
      t.string :title
      t.string :poster
      t.integer :user_id
      t.boolean :public
      t.float :price

      t.timestamps
    end
  end
end
