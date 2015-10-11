class AddAssetTypeToSickAsset < ActiveRecord::Migration
  def change
    add_column :sick_assets, :asset_type, :string
  end
end
