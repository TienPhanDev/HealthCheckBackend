class Api::V1::ApiPostsController < ApplicationController
  skip_before_action :logged_in?, only: [:api_post]

  def api_post
    @data = JSON.parse(RestClient.get("https://www.google.com/#{api_params[:url]}"))
    if @data
      render json: @data, status: :ok
    else 
      render json: @data.errors, status: :unprocessable_entity
    end
  end

  private

  def api_params
    params.require(:api_post).permit(:url)
  end
  
end
