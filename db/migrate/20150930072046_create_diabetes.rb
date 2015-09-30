class CreateDiabetes < ActiveRecord::Migration
  def change
    create_table :diabetes do |t|
      t.boolean :ishave
      t.integer :limosis
      t.integer :after_meal
      t.datetime :diagnosis_date
      t.integer :user_id

      t.timestamps
    end
  end
end
