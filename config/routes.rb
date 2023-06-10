Rails.application.routes.draw do
  resources :disasters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  
  root "api/v1/ai#info", format: 'json'  

  namespace :api do
    
    namespace :v1 do

      get  '/', to: 'api/v1/ai#info'
      resources :disasters

      get  '/info', to: 'ai#info'
      post  '/data', to: 'ai#data'
      post '/complex_data', to: 'ai#complex_data', format: 'json'


    end

  end


end
