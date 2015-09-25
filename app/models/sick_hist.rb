class SickHist < ActiveRecord::Base
  attr_accessible :user_id, :title, :sick_case_id, :position, :desc, :free, :asset

  belongs_to :user
  belongs_to :sick_case, :touch => true


  acts_as_list scope: :sick_case

  def open_to_user?(user)
     return true if user == self.user
     return true if self.free?
     false
  end
end
