Rails.application.routes.draw do
  # Route for listing all courses
  get 'courses', to: 'courses#index', as: 'courses'

  # Route for showing a specific course
  get 'courses/:id', to: 'courses#show', as: 'course'

  # Root route if needed
  root 'courses#index'
end
