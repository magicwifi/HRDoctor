class Hyperlipidemia < ActiveRecord::Base
  attr_accessible :ishave, :diagnosis_date, :user_id
  belongs_to :user
end
