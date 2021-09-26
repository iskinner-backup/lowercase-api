class ApplicationController < ActionController::API
  # GET /lowercase
  def lowercase
    render plain: app_params[:text].downcase
  end

  private

  def app_params
    params.permit(:text)
  end
end
