class CreateBasicCases < ActiveRecord::Migration
  def change
    create_table :basic_cases do |t|
      t.text :main_desc
      t.text :detail_desc
      t.text :treat_desc
      t.text :now_desc
      t.datetime :created_at
      t.datetime :updated_at
      t.string :poster
      t.integer :user_id
      t.boolean :public
      t.boolean :edited

      t.timestamps
    end
  end
end
