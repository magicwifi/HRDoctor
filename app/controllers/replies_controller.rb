class RepliesController < ApplicationController
skip_before_action :verify_authenticity_token

  def create
     basic_case_id = params[:basic_case_id].to_i
     doctor_id = params[:doctor_id].to_i
     doctor = Doctor.find_by_doctor_id(doctor_id)
     if BasicCase.find_by_id(basic_case_id).nil? or doctor.nil?
 	render :text => '{"result":400}'
     else
     	reply = Reply.new(:sick_name=>params[:sick_name],:main_desc=>params[:main_desc],:basic_case_id=>params[:basic_case_id],:doctor_id => doctor.id)
     if reply.save
 	render :text => '{"result":200}'
     		else
 		render :text => '{"result":400}'
     		end
      end
   end
end
