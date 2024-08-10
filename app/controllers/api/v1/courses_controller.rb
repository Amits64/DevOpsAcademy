class Api::V1::CoursesController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @courses = Course.all
      render json: @courses
    end
  
    def show
      @course = Course.find(params[:id])
      render json: @course
    end
  
    def create
      @course = Course.new(course_params)
      if @course.save
        render json: @course, status: :created
      else
        render json: @course.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def course_params
      params.require(:course).permit(:title, :description, :content)
    end
  end
  