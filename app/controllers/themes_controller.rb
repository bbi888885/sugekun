class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def create
    theme = Theme.create(theme_params)
    redirect_to themes_path
    
  end

  private
  def theme_params
    params.permit(:title)
  end
end
