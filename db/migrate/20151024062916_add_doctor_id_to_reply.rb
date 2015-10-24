class AddDoctorIdToReply < ActiveRecord::Migration
  def change
    add_column :replies, :doctor_id, :integer
  end
end
