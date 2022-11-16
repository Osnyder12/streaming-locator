Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "search#index"

  post 'submit_search', to: 'search#submit_search'
end
