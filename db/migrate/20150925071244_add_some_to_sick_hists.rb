class AddSomeToSickHists < ActiveRecord::Migration
  def change
    add_column :sick_hists, :user_id, :string
    add_column :sick_hists, :integer, :string
    add_column :sick_hists, :size, :integer
    add_column :sick_hists, :filename, :string
    add_column :sick_hists, :content_type, :string
  end
end
