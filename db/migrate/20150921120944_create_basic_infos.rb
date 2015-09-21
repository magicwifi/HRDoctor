class CreateBasicInfos < ActiveRecord::Migration
  def change
    create_table :basic_infos do |t|
      t.string :name
      t.datetime :birth
      t.float :height
      t.float :weight
      t.string :gender
      t.boolean :edited
      t.integer :user_id

      t.timestamps
    end
  end
end
