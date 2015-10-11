class AddSickDateToSickness < ActiveRecord::Migration
  def change
    add_column :sicknesses, :sick_date, :datetime
  end
end
