class BasicInfo < ActiveRecord::Base
  attr_accessible :birth, :name, :gender, :height, :weight, :edited, :user_id
  belongs_to :user
end
