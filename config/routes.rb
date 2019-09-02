Rails.application.routes.draw do
  resources :users do
    collection do
      post '/login', to: 'users#login'
      end
    end

    resources :users do
      resources :listnames  do
        resources :games
      end
    end


  resources :hotlists
  # resources :solos
  resources :bgg_lists


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
