class SickHistsController < ApplicationController
  def create
    respond_to do |f|
      f.js do
        @sick_hist = SickHist.new
        @sick_hist.asset = params[:key]
        @sick_hist.size = params[:fsize]
        @sick_hist.filename = params[:fname]
        @sick_hist.content_type = params[:mimeType]
        @sick_hist.sick_case_id = params[:custom_fields][:sick_case_id]
        @sick_hist.user_id = current_user.id
        @sick_hist.save
        #track_activity @sick_hist, @sick_hist.sick_case.id
      end
    end
  end

  def update
    sick_hist = params[:id] ? SickHist.find(params[:id]) : SickHist.find(params[:sick_hist][:id])
    respond_to do |f|
      if params[:etag].present?
        old_asset = sick_hist.asset
        new_asset = params[:key]
        if old_asset != new_asset
          sick_hist.asset = params[:key]
          sick_hist.size = params[:fsize]
          sick_hist.filename = params[:fname]
          sick_hist.content_type = params[:mimeType]
          sick_hist.save
          #track_activity sick_hist, sick_hist.sick_case.id
        end
        f.json { render :json => {} }
      else
        sick_hist.update_attributes(params[:sick_hist])
        f.html do
          redirect_to_target_or_default root_url
        end
      end
    end
  end

  def sort
    params[:sick_hist].each_with_index do |id, index|
      SickHist.update_all({position: index + 1}, {id: id})
    end
    render nothing: true
  end

  def destroy
    sick_hist = SickHist.find(params[:id])
    #track_activity sick_hist, sick_hist.sick_case.id
    destroy_notifications sick_hist
    sick_hist.destroy
    redirect_to edit_sick_case_path(sick_hist.user.name,sick_hist.sick_case.name)
  end

  def download
    sick_hist_path = "http://#{Settings.qiniu.bucket_domain}/#{params[:asset]}"
    redirect_to sick_hist_path
  end
end
