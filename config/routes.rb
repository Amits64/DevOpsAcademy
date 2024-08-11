Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # Custom routes
  get 'courses', to: 'courses#index', as: 'courses'
  get 'courses/:id', to: 'courses#show', as: 'course'
  get 'about', to: 'about#index'
  get 'contact', to: 'contact#index'

  # Root route
  root 'welcome#index'
end
