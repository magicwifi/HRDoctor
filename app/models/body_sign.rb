class BodySign < ActiveRecord::Base
  attr_accessible :temperature, :pulse, :high_pressure, :low_pressure, :swelling, :basic_case_id
  belongs_to :basic_case
  validates :temperature, presence: true, format: { with: /\d{2}/, message: "请输入整数位"  }
  validates :pulse, presence: true, format: { with: /\d{2,3}/ , message: "请输入整数位" }
  validates :low_pressure, presence: true, format: { with: /\d{2,3}/, message: "请输入整数位"  }
  validates :high_pressure, presence: true, format: { with: /\d{2,3}/ , message: "请输入整数位" }
end
