class AddAllergyToBasicInfo < ActiveRecord::Migration
  def change
    add_column :basic_infos, :allergy, :string
  end
end
