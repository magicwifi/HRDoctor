class AddProceedToBasicCase < ActiveRecord::Migration
  def change
    add_column :basic_cases, :process, :string
  end
end
