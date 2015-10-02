class Sickness < ActiveRecord::Base
  attr_accessible :user_id, :title, :position, :desc,  :asset

  belongs_to :user, :touch => true
  
  acts_as_list scope: :user 



end
