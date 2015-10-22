class AddDoctorIdToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :doctor_id, :integer
  end
end
