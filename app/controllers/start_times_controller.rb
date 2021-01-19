class StartTimesController < ApplicationController
  
  def create
    start = StartTime.create(start_time_params)
    redirect_to theme_path(start.theme_id)
  end

  private
  def start_time_params
    params.permit(:theme_id)
  end
end