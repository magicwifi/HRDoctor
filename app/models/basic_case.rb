class BasicCase < ActiveRecord::Base
  attr_accessible :id,:main_desc, :detail_desc, :treat_desc,:now_desc,:process,:updated_at,:created_at, :poster, :user_id, :doctor_id, :public, :has_reply
  belongs_to :user
  belongs_to :doctor
  has_one :body_sign
  has_one :reply
  has_many :sick_assets


  def self.show_basic_case(params)	
    basic_case = BasicCase.find_by_id(params[:basic_case_id])
    if  basic_case.nil?
        {:check=>false, :code=>400,:msg=>"Not Find BasicCase",}
    else
        {:check=>true, :code=>200,:basic_case=>basic_case,:body_sign=>basic_case.body_sign,:sick_assets=>basic_case.sick_assets }
    end	

  end

end
