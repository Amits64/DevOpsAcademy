class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to courses_path, alert: "Course not found."
  end
end
