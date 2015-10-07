class RenameBaseCaseToBasicCase < ActiveRecord::Migration
  def change
    rename_column :sick_assets, :base_case_id, :basic_case_id
  end
end
