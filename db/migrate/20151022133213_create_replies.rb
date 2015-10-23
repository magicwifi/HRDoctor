class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :sick_name
      t.integer :basic_case_id
      t.text :main_desc

      t.timestamps
    end
  end
end
