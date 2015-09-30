class CreateHyperlipidemia < ActiveRecord::Migration
  def change
    create_table :hyperlipidemia do |t|
      t.boolean :ishave
      t.datetime :diagnosis_date
      t.integer :user_id

      t.timestamps
    end
  end
end
