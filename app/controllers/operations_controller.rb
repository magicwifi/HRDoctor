class OperationsController < ApplicationController
  def create
    respond_to do |f|
      f.js do
        @operation = Operation.new
        @operation.asset = params[:key]
        @operation.size = params[:fsize]
        @operation.filename = params[:fname]
        @operation.content_type = params[:mimeType]
        @operation.user_id = params[:custom_fields][:user_id]
        @operation.save
        #track_activity @operation, @operation.sick_case.id
      end
    end
  end

  def update
    operation = params[:id] ? Operation.find(params[:id]) : Operation.find(params[:operation][:id])
    respond_to do |f|
      if params[:etag].present?
        old_asset = operation.asset
        new_asset = params[:key]
        if old_asset != new_asset
          operation.asset = params[:key]
          operation.size = params[:fsize]
          operation.filename = params[:fname]
          operation.content_type = params[:mimeType]
          operation.save
          #track_activity operation, operation.sick_case.id
        end
        f.json { render :json => {} }
      else
        operation.update_attributes(params[:operation])
        f.js do
	   @operation =  operation
	   @user = operation.user
        end
      end
    end
  end

  def sort
    params[:operation].each_with_index do |id, index|
      Operation.update_all({position: index + 1}, {id: id})
    end
    render nothing: true
  end

  def destroy
    operation = Operation.find(params[:id])
    #track_activity operation, operation.sick_case.id
    destroy_notifications operation
    operation.destroy
    redirect_to "/editmyoper"
  end

  def download
    operation_path = "http://#{Settings.qiniu.bucket_domain}/#{params[:asset]}"
    redirect_to operation_path
  end
end
