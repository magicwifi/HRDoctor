class SickHistsController < ApplicationController
  def create
    respond_to do |f|
      f.js do
        @sick_hist = SickHist.new
        @user =  current_user
        @sick_hist.user_id = current_user.id
      	if params[:etag].present?
        @sick_hist.asset = params[:key]
        @sick_hist.size = params[:fsize]
        @sick_hist.filename = params[:fname]
        @sick_hist.content_type = params[:mimeType]
	else
        @sick_hist.title = params[:sick_hist][:title] 
        @sick_hist.desc = params[:sick_hist][:desc] 
        @sick_hist.sick_date = params[:sick_hist][:sick_date] 
	end
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
        f.js do
	   @sick_hist =  sick_hist
	   @user = sick_hist.user
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
    redirect_to "/editmyoper"
  end

  def download
    sick_hist_path = "http://#{Settings.qiniu.bucket_domain}/#{params[:asset]}"
    redirect_to sick_hist_path
  end
end
