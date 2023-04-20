Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  namespace :api do
    namespace :v1 do
      resources :roots
      # get '/message', to: 'messages#index'
      root to: 'api/v1/roots#index'
    end
  end
end
