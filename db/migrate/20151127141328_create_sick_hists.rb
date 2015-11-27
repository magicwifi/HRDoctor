class CreateSickHists < ActiveRecord::Migration
  def change
    create_table :sick_hists do |t|
      t.string :title
      t.string :sub_title
      t.string :desc
      t.string :asset
      t.integer :user_id
      t.integer :size
      t.string :filename
      t.string :content_type
      t.integer :position
      t.datetime :sick_date

      t.timestamps
    end
  end
end
