class DoctorsController < ApplicationController

  def index
     @doctor_groups = []
     @doctors = Doctor.all
     @doctors.in_groups_of(3, false) { |group| @doctor_groups << group }
  end

  def show
     @doctor = Doctor.find(params[:id]);
  end

end
