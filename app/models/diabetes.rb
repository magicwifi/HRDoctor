class Diabetes < ActiveRecord::Base
  attr_accessible :ishave, :limosis, :after_meal, :diagnosis_date, :user_id
  belongs_to :user
  validates :limosis, presence: true, format: { with: /\d+/, message: "请输入整数位"  }
  validates :after_meal, presence: true, format: { with: /\d+/ , message: "请输入整数位" }
end
