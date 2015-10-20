class BasicCase < ActiveRecord::Base
  attr_accessible :id,:main_desc, :detail_desc, :treat_desc,:now_desc,:process,:updated_at,:created_at, :poster, :user_id, :doctor_id, :public
  belongs_to :user
  belongs_to :doctor
  has_one :body_sign
  has_many :sick_assets
end
