class AddManyToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :hospital, :string
    add_column :doctors, :room, :string
    add_column :doctors, :rank, :string
    add_column :doctors, :level, :integer
    add_column :doctors, :sex, :string
    add_column :doctors, :speciality, :string
  end
end
