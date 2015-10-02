class SicknessesController < ApplicationController
  def create
    respond_to do |f|
      f.js do
        @sickness = Sickness.new
        @sickness.asset = params[:key]
        @sickness.size = params[:fsize]
        @sickness.filename = params[:fname]
        @sickness.content_type = params[:mimeType]
        @sickness.user_id = params[:custom_fields][:user_id]
        @sickness.save
        #track_activity @sickness, @sickness.sick_case.id
      end
    end
  end

  def update
    sickness = params[:id] ? Sickness.find(params[:id]) : Sickness.find(params[:sickness][:id])
    respond_to do |f|
      if params[:etag].present?
        old_asset = sickness.asset
        new_asset = params[:key]
        if old_asset != new_asset
          sickness.asset = params[:key]
          sickness.size = params[:fsize]
          sickness.filename = params[:fname]
          sickness.content_type = params[:mimeType]
          sickness.save
          #track_activity sickness, sickness.sick_case.id
        end
        f.json { render :json => {} }
      else
        sickness.update_attributes(params[:sickness])
        f.html do
          redirect_to_target_or_default root_url
        end
      end
    end
  end

  def sort
    params[:sickness].each_with_index do |id, index|
      Sickness.update_all({position: index + 1}, {id: id})
    end
    render nothing: true
  end

  def destroy
    sickness = Sickness.find(params[:id])
    #track_activity sickness, sickness.sick_case.id
    destroy_notifications sickness
    sickness.destroy
    redirect_to "/editmysick"
  end

  def download
    sickness_path = "http://#{Settings.qiniu.bucket_domain}/#{params[:asset]}"
    redirect_to sickness_path
  end
end
