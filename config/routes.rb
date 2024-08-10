Rails.application.routes.draw do
  get 'welcome/index'
  get 'courses', to: 'courses#index', as: 'courses'
  get 'courses/:id', to: 'courses#show', as: 'course'
  
  root 'welcome#index'
end
