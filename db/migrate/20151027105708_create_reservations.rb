class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :support_number
      t.integer :price
      t.string :type
      t.string :remark

      t.timestamps
    end
  end
end
