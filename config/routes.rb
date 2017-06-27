Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    get '/search', to: "books#search"
    resources :books do
        resources :comments, only: [:index, :create]
    end
    # I think I should set up Action Cables to update comments in real time
    resources :users, only: [:index, :create]
    resources :sessions, only: [:create]
end
