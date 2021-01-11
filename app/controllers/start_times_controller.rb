class StartTimesController < ApplicationController
  
  def create
    StartTime.create(start_time_params)
    redirect_to themes_path
  end

  private
  def start_time_params
    params.permit(:theme_id)
  end
end