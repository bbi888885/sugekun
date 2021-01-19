class StopTimesController < ApplicationController
  def create
    stop = StopTime.create(stop_time_params)
    redirect_to theme_path(stop.theme_id)
  end

  private
  def stop_time_params
    params.permit(:theme_id)
  end
end