class AddHaveAllergyToBasicInfo < ActiveRecord::Migration
  def change
    add_column :basic_infos, :have_allergy, :boolean
  end
end
