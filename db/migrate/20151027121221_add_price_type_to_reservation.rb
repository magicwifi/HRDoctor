class AddPriceTypeToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :price_type, :string
  end
end
