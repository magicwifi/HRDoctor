class Sickness < ActiveRecord::Base
  attr_accessible :user_id, :title, :position, :desc,  :asset

  belongs_to :user
end
