class SickAssetsController < ApplicationController
  def create
    respond_to do |f|
      f.js do
        @sick_asset = SickAsset.new
        @sick_asset.asset = params[:key]
        @sick_asset.size = params[:fsize]
        @sick_asset.filename = params[:fname]
        @sick_asset.content_type = params[:mimeType]
        @sick_asset.basic_case_id = params[:custom_fields][:basic_case_id]
        @sick_asset.save
        #track_activity @sick_asset, @sick_asset.sick_case.id
      end
    end
  end

  def update
    sick_asset = params[:id] ? SickAsset.find(params[:id]) : SickAsset.find(params[:sick_asset][:id])
    respond_to do |f|
      if params[:etag].present?
        old_asset = sick_asset.asset
        new_asset = params[:key]
        if old_asset != new_asset
          sick_asset.asset = params[:key]
          sick_asset.size = params[:fsize]
          sick_asset.filename = params[:fname]
          sick_asset.content_type = params[:mimeType]
          sick_asset.save
          #track_activity sick_asset, sick_asset.sick_case.id
        end
        f.json { render :json => {} }
      else
        sick_asset.update_attributes(params[:sick_asset])
        #f.json { render :json => {} }
        f.js do
	   @basic_case = sick_asset.basic_case
        end
        #f.html do
          #redirect_to_target_or_default root_url
        #end
      end
    end
  end

  def sort
    params[:sick_asset].each_with_index do |id, index|
      SickAsset.update_all({position: index + 1}, {id: id})
    end
    render nothing: true
  end

  def destroy
    sick_asset = SickAsset.find(params[:id])
    @basic_case = sick_asset.basic_case
    #track_activity sick_asset, sick_asset.sick_case.id
    destroy_notifications sick_asset
    sick_asset.destroy
    respond_to do |f|
      f.js do
      end
    end
  end

  def download
    sick_asset_path = "http://#{Settings.qiniu.bucket_domain}/#{params[:asset]}"
    redirect_to sick_asset_path
  end
end
