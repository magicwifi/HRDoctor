class CreateStatusSigns < ActiveRecord::Migration
  def change
    create_table :status_signs do |t|
      t.string :name

      t.timestamps
    end
  end
end
