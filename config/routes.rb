Rails.application.routes.draw do
  get 'welcome/index'
  get 'courses', to: 'courses#index', as: 'courses'
  get 'courses/:id', to: 'courses#show', as: 'course'
  get 'about', to: 'about#index'
  get 'contact', to: 'contact#index'
  
  root 'welcome#index'
end
