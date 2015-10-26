class DoctorsController < ApplicationController
skip_before_action :verify_authenticity_token
  def index
     @doctor_groups = []
     @doctors = Doctor.all
     @doctors.in_groups_of(3, false) { |group| @doctor_groups << group }
     @process = ""
  end
  def doctor_index
     @doctor_groups = []
     @doctors = Doctor.all
     @doctors.in_groups_of(3, false) { |group| @doctor_groups << group }
     @process = "commit"
     render 'index'
  end

  def doctor_commit
     @doctor = Doctor.find(params[:id]);
  end


  def show
     @doctor = Doctor.find(params[:id]);
  end

  def create
     doctor_id = params[:doctor_id].to_i
     price = params[:price].to_i
     doctor = Doctor.new(:name=>params[:name],:main_desc=>params[:main_desc],:doctor_id=>doctor_id,:price=>price,:url=>params[:url],:avatar=>params[:avatar])
     if doctor.save
 	render :text => '{"result":200}'
     else
 	render :text => '{"result":400}'
     end
   end

  def update_main_desc
     doctor_id = params[:doctor_id].to_i
     doctor = Doctor.find_by_doctor_id(doctor_id)
     if doctor.nil?
 	render :text => '{"result":400}'
	return
     end
     doctor.update(:main_desc=>params[:main_desc])
     if doctor.save
 	render :text => '{"result":200}'
     else
 	render :text => '{"result":400}'
     end
   end

  def update_doctor_price
     doctor_id = params[:doctor_id].to_i
     doctor = Doctor.find_by_doctor_id(doctor_id)
     if doctor.nil?
 	render :text => '{"result":400}'
	return
     end
     doctor.update(:price=>params[:price])
     if doctor.save
 	render :text => '{"result":200}'
     else
 	render :text => '{"result":400}'
     end
   end

  def update_doctor_url
     doctor_id = params[:doctor_id].to_i
     doctor = Doctor.find_by_doctor_id(doctor_id)
     if doctor.nil?
 	render :text => '{"result":400}'
	return
     end
     doctor.update(:url=>params[:url])
     if doctor.save
 	render :text => '{"result":200}'
     else
 	render :text => '{"result":400}'
     end
   end

  def update_doctor_avatar
     doctor_id = params[:doctor_id].to_i
     doctor = Doctor.find_by_doctor_id(doctor_id)
     if doctor.nil?
 	render :text => '{"result":400}'
	return
     end
     doctor.update(:avatar=>params[:avatar])
     if doctor.save
 	render :text => '{"result":200}'
     else
 	render :text => '{"result":400}'
     end
   end

end
