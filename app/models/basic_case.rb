class BasicCase < ActiveRecord::Base
  attr_accessible :main_desc, :detail_desc, :treat_desc,:now_desc,:created_at,:edited, :poster, :user_id, :public
  belongs_to :user
end
