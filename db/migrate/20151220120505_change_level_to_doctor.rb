class ChangeLevelToDoctor < ActiveRecord::Migration
  def change
     change_column :doctors, :level, :string
  end
end
