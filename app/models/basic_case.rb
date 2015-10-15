class BasicCase < ActiveRecord::Base
  attr_accessible :id,:main_desc, :detail_desc, :treat_desc,:now_desc,:updated_at,:created_at, :edited, :poster, :user_id, :public
  belongs_to :user
  has_one :body_sign
  has_many :sick_assets
end
