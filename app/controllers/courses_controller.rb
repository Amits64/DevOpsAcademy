class CoursesController < ApplicationController
  def index
    @courses = [
      { name: "Git", price: 5 },
      { name: "Ansible", price: 10 },
      { name: "Jenkins", price: 15 },
      { name: "Docker", price: 15 },
      { name: "Linux", price: 20 },
      { name: "Terraform", price: 20 },
      { name: "Kubernetes & Helm charts", price: 30 },
      { name: "Logging & Monitoring", price: 35 },
      { name: "DevOps Full Comprehensive Course", price: 200 }
    ]
  end

  def show
    @course = @courses.find { |c| c[:id] == params[:id].to_i }
    if @course.nil?
      redirect_to courses_path, alert: "Course not found."
    end
  end
end
