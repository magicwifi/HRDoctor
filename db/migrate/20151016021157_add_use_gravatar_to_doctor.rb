class AddUseGravatarToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :use_gravatar, :string
  end
end
