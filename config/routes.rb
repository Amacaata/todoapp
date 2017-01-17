Rails.application.routes.draw do
  resources :allocated_times
  resources :tasks
  resources :projects
  resources :user_in_teams
  resources :teams
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
