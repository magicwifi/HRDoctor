class Hypertension < ActiveRecord::Base
  attr_accessible :ishave, :before_high, :before_low, :now_high, :now_low, :diagnosis_date, :user_id
  belongs_to :user
  validates :before_high, presence: true, format: { with: /\d{2,3}/, message: "请输入整数位"  }
  validates :before_low, presence: true, format: { with: /\d{2,3}/ , message: "请输入整数位" }
  validates :now_high, presence: true, format: { with: /\d{2,3}/, message: "请输入整数位"  }
  validates :now_low, presence: true, format: { with: /\d{2,3}/ , message: "请输入整数位" }
end
