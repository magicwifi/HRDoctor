class AddDoctorIdToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :doctor_id, :integer
  end
end
