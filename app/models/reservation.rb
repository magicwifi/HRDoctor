class Reservation < ActiveRecord::Base
  attr_accessible :id,:doctor_id, :support_number,:price,:price_type,:remark
  belongs_to :doctor
  validates :support_number, presence: true, format: { with: /\d+/ }
  validates :price_type, presence: true, format: { with: /fee|love|plus/ }
end
