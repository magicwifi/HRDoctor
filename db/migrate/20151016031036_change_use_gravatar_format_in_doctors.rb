class ChangeUseGravatarFormatInDoctors < ActiveRecord::Migration
  def change
    change_column :doctors, :use_gravatar, :boolean
  end
end
