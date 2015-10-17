class AddDoctorIdToBasicCase < ActiveRecord::Migration
  def change
    add_column :basic_cases, :doctor_id, :integer
  end
end
