Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    get '/search', to: "books#search"
    resources :book do
        resources :comments, only: [:index, :create]
    end
    # I think I should set up Action Cables to update comments in real time
end
