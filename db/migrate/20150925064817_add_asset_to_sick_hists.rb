class AddAssetToSickHists < ActiveRecord::Migration
  def change
    add_column :sick_hists, :asset, :string
  end
end
