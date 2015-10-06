class BodySign < ActiveRecord::Base
  attr_accessible :temperature, :pulse, :high_pressure, :low_pressure, :swelling, :basic_case_id
  belongs_to :basic_case
end
