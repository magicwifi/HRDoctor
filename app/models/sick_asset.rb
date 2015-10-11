class SickAsset < ActiveRecord::Base
  attr_accessible :basic_case_id, :title, :position, :desc,  :asset, :asset_type

  belongs_to :basic_case, :touch => true
  
  acts_as_list scope: :basic_case 
end
