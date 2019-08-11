Rails.application.routes.draw do
  resources :users do
    collection do
      post '/login', to: 'users#login'
        resources :listnames  do
          resources :games
        end
      end
    end


  resources :hotlists
  # resources :solos
  resources :bgg_lists
  # resources :listnames do
  #   resources :games
  # end
    # resources :games

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
