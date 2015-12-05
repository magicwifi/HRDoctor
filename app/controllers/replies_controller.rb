class RepliesController < ApplicationController
skip_before_action :verify_authenticity_token

  def create
     basic_case_id = params[:basic_case_id].to_i
     doctor_id = params[:doctor_id].to_i
     doctor = Doctor.find_by_doctor_id(doctor_id)
     basic_case = BasicCase.find_by_id(basic_case_id)
     if basic_case.nil? or doctor.nil?
 	render :text => '{"result":400}'
     else
     	reply = Reply.new(:sick_name=>params[:sick_name],:sick_sub_name=>params[:sick_sub_name],:main_desc=>params[:main_desc],:basic_case_id=>params[:basic_case_id],:doctor_id => doctor.id)
     if reply.save
	basic_case.update_attribute(:has_reply, true)
 	render :text => '{"result":200}'
     		else
 		render :text => '{"result":400}'
     		end
      end
   end

   def update_plus
     basic_case_id = params[:basic_case_id].to_i
     basic_case = BasicCase.find(basic_case_id)
     if basic_case.nil? or basic_case.process != 'plus' or basic_case.reply.nil? 
 	render :text => '{"result":400}'
     else
	reply = basic_case.reply
	reply.update(:allow_plus=>params[:allow_plus],:plus_date=>params[:plus_date],:plus_department=>params[:plus_department])
	reply.save
 	render :text => '{"result":200}'
     end
	
   end

end
