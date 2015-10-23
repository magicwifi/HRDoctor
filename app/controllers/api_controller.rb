class ApiController < ApplicationController
skip_before_action :verify_authenticity_token


  def back_code(code,msg)
    respond_to do |format|
      format.html {render text: "Error#{code.to_s}-#{msg}"}
      format.json {render :json => {:status => {:code=>code.to_s, :message=>msg}}}
    end
  end

  def money
   respond_to do |f|
    f.json {
      result = []

      orders = Order.where('total_fee  IS  NOT NULL')
      orders.each do |order|
        result << {
          :total_fee => order.total_fee,
          :date => order.created_at.strftime(t('date.formats.default'))
        }
      end
      # Workaround for https://github.com/rails/rails/issues/15081
      # TODO When the bug above is fixed we should just be able to replace the block below with
      # render :json => result, :callback => params[:callback]
      if params[:callback]
        render :json => result, callback: params[:callback], content_type: "application/javascript"
      else
        render :json => result
      end
    }
    end
  end

  	def show_basic_cases
		check = Doctor.show_basic_list(params)
		if check[:check]
			render :json => {:code=>'200',:result =>check[:result]}
		else
			back_code(check[:code],check[:msg])
		end
	end  

  	def show_basic_info
		check = User.show_basic_info(params)
		if check[:check]
			render :json => {:code=>'200',:basic_info =>check[:basic_info], :hyperlipidemia=>check[:hyperlipidemia],:diabetes=>check[:diabetes],:hypertension=>check[:hypertension],:operation=>check[:operation],:sicknesses =>check[:sicknesses] }
		else
			back_code(check[:code],check[:msg])
		end
	end  

  	def show_basic_case
		check = BasicCase.show_basic_case(params)
		if check[:check]
			render :json => {:code=>'200',:basic_case =>check[:basic_case], :body_sign=>check[:body_sign],:sick_assets=>check[:sick_assets] }
		else
			back_code(check[:code],check[:msg])
		end
	end  

end
