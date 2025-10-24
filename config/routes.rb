Rails.application.routes.draw do
  
  resources :profiles

  get "up" => "rails/health#show", as: :rails_health_check

  root 'profiles#index'
end
