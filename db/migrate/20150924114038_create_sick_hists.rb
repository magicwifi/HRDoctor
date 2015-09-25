class CreateSickHists < ActiveRecord::Migration
  def change
    create_table :sick_hists do |t|
      t.string :title
      t.text :desc
      t.datetime :created_at
      t.datetime :updated_at
      t.string :title
      t.string :poster
      t.integer :sick_case_id
      t.boolean :public
      t.float :price

      t.timestamps
    end
  end
end
