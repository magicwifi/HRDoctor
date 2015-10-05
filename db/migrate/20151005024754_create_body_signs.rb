class CreateBodySigns < ActiveRecord::Migration
  def change
    create_table :body_signs do |t|
      t.integer :temperature
      t.integer :pulse
      t.integer :high_pressure
      t.integer :low_pressure
      t.boolean :swelling
      t.integer :basic_case_id

      t.timestamps
    end
  end
end
