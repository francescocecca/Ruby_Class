Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "example#index"
  get "/users", to: "example#users"
  get "/users/:id", to: "example#user_with_param"

  # ESERCIZIO PIANETI

  get "/planets", to: "planets#planets"
  get "/planets/:id", to: "planets#planets_with_params"

end
