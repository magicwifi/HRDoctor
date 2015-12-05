class Reply < ActiveRecord::Base
  attr_accessible :id, :main_desc, :basic_case_id,:doctor_id,:sick_sub_name,:sick_name, :created_at,:allow_plus, :plus_date, :plus_department
  belongs_to :basic_case
  belongs_to :doctor
  validates :sick_name,  presence: true 
  validates :sick_sub_name,  presence: true 
  validates :main_desc,  presence: true 
  validates :basic_case_id,  presence: true, uniqueness:true,format: { with: /\d+/  } 
  has_many   :notifications, :as => :notifiable, :dependent => :destroy
  after_create :send_notification_to_user
  
  def send_notification_to_user
    Notification.notify(self.basic_case.user, self, self.doctor, "reply")
  end



end
