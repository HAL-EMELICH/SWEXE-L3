Rails.application.routes.draw do
  
  resources :profiles
  
  get "profiles/index"
  
  get 'profiles/new', to: 'profiles#new'
  
  post 'profiles', to: 'profiles#create'
  
  delete 'profiles/:id', to: 'profiles#destroy'
  
  get 'profiles/:id', to: 'profiles#show'
  
  get 'profiles/:id/edit', to: 'profiles#edit'

  get "up" => "rails/health#show", as: :rails_health_check

  root 'profiles#index'
end
