class AddPositionToSickHists < ActiveRecord::Migration
  def change
    add_column :sick_hists, :position, :integer
  end
end
