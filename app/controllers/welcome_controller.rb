class WelcomeController < ApplicationController
  def index
    @courses = [
      { name: "Git", price: 5 },
      { name: "Ansible", price: 10 },
      { name: "Jenkins", price: 15 },
      { name: "Terraform", price: 20 },
      { name: "Docker", price: 15 },
      { name: "Kubernetes & Helm charts", price: 30 },
      { name: "Logging & Monitoring", price: 25 },
      { name: "DevOps Full Comprehensive Course", price: 200 }
    ]
  end
end
