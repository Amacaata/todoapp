Rails.application.routes.draw do
  resources :allocated_times
  resources :tasks
  resources :projects
  resources :user_in_teams
  resources :teams
  resources :users
#original
=begin
resources :allocated_times
resources :tasks
resources :projects
resources :user_in_teams
resources :teams
resources :users
=end


  get "/auth/google_oauth2/callback", to: "sessions#create"
  get 'auth/failure', to: redirect('/')
  get "/signout", to: "sessions#destroy", as: 'signout'

  resources :sessions, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
