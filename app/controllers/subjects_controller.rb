class SubjectsController < ApplicationController
  def create
    subject = Subject.create(subject_params)
    redirect_to theme_path(subject.theme_id)
  end

  private
  def subject_params
    params.permit(:theme_id, :topic)
  end
end
