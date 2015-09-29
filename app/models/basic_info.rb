class BasicInfo < ActiveRecord::Base
  attr_accessible :age, :name, :gender, :height, :weight, :edited, :user_id, :drink, :smokeinfo 
  belongs_to :user
  validates :name,  presence: true, format: { without: /(\-| |\.|\/|\\)/, message: "不能包含横线, 斜线, 句点或空格" }
  validates :gender, presence: true, format: { with: /male|female/ }
  validates :height, presence: true, format: { with: /\d{2,3}/, message: "请输入整数位的身高值"  }
  validates :weight, presence: true, format: { with: /\d{2,3}/ , message: "请输入整数位的体重值" }
  validates :age, presence: true, format: { with: /\d{2}/ , message: "请输入两位整数的年龄值" }
end
