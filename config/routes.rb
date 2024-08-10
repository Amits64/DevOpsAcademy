Rails.application.routes.draw do
  # Route for the welcome page
  get 'welcome/index'

  # Route for listing all courses
  get 'courses', to: 'courses#index', as: 'courses'

  # Route for showing a specific course
  get 'courses/:id', to: 'courses#show', as: 'course'

  # Set root route to the welcome page
  root 'welcome#index'
end
