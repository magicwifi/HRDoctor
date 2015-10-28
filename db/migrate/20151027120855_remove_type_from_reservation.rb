class RemoveTypeFromReservation < ActiveRecord::Migration
  def change
    remove_column :reservations, :type, :string
  end
end
