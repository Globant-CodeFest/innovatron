Rails.application.routes.draw do
  resources :disasters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get  '/', to: 'api/v1/ai#info'
  root "api/v1/ai#info", format: 'json'  

  namespace :api do
    
    namespace :v1 do

      resources :disasters

      get  '/info', to: 'ai#info'
      post  '/data', to: 'ai#data'


    end

  end


end
