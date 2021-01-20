class SubjectsController < ApplicationController
  
  def create
    subject = Subject.create(subject_params)
    redirect_to theme_path(subject.theme_id)
  end

  def update
    subject = Subject.find(params[:id])
    if params[:commit] == "START"
      
      subject.update(start_time: Time.now)
      redirect_to theme_path(subject.theme_id)
    else
      subject = Subject.find(params[:id])
      subject.update(stop_time: Time.now)
      redirect_to theme_path(subject.theme_id)
    end
  end

  private
  def subject_params
    params.permit(:theme_id, :topic, :start_time, :stop_time)
  end
end
