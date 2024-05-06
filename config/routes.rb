Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  post "/routines" => "routines#create"

  get "/routines/:id" => "routines#show"

  get "/routines" => "routines#index"

  delete "/routines/:id" => "routines#destroy"

  get "/users" => "users#index"

  get "/users/:id" => "users#show"

  post "/users" => "users#create"

  patch "/exercises/:id" => "exercises#update"

  get "/exercises" => "exercises#index"
  
  post "/exercises" => "exercises#create"

  get "/exercises/:id" => "exercises#show"

  delete "/exercises/:id" => "exercises#destroy"

  post "/sessions" => "sessions#create"

  get "/categories" => "categories#index"
  
  post "/categories" => "categories#create"

  get "/categories/:id" => "categories#show"

  delete "/categories/:id" => "categories#destroy"
end
