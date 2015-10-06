class ChangeSwellingFormartInBodySign < ActiveRecord::Migration
  def change
    change_column :body_signs, :swelling, :string
  end
end
