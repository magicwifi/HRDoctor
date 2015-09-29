class CreateHypertensions < ActiveRecord::Migration
  def change
    create_table :hypertensions do |t|
      t.boolean :ishave
      t.integer :before_high
      t.integer :before_low
      t.integer :now_high
      t.integer :now_low
      t.datetime :diagnosis_date
      t.integer :user_id

      t.timestamps
    end
  end
end
