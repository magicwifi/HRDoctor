class CreateSickAssets < ActiveRecord::Migration
  def change
    create_table :sick_assets do |t|
      t.string :title
      t.text :desc
      t.datetime :created_at
      t.datetime :updated_at
      t.string :poster
      t.string :asset
      t.integer :base_case_id
      t.integer :size
      t.string :filename
      t.string :content_type
      t.integer :position

      t.timestamps
    end
  end
end
