class ThemesController < ApplicationController
  def index
    @themes = Theme.order("created_at DESC")
  end

  def new
    @theme = Theme.new
  end

  def create
    Theme.create(theme_params)
    redirect_to themes_path
  end

  def show
    @theme = Theme.where(id: params[:id])
    
  end

  def progress
    @themes = Theme.all
    @start_times = Subject.group(:theme_id).sum(:start_time)
    @stop_times = Subject.group(:theme_id).sum(:stop_time)

  end

  private
  def theme_params
    params.require(:theme).permit(:title)
  end
end
