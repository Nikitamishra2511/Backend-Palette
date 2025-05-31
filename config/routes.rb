Rails.application.routes.draw do
  resources :seekers, only: [:create, :show, :update]

  get "up" => "rails/health#show", as: :rails_health_check

end
