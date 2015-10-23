class Reply < ActiveRecord::Base
  attr_accessible :id, :main_desc, :basic_case_id, :sick_name, :created_at
  belongs_to :basic_case
  validates :sick_name,  presence: true 
  validates :main_desc,  presence: true 
  validates :basic_case_id,  presence: true, uniqueness:true,format: { with: /\d+/  } 
end
