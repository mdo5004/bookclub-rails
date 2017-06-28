Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get '/search', to: "books#search"
    resources :books do
        resources :comments, only: [:index, :create]
    end
    # TODO: set up Action Cables to update comments in real time
    resources :users, only: [:index, :create]

    scope :format => true, :constraints => { :format => 'json' } do
        post   "/login"       => "sessions#create"
        delete "/logout"      => "sessions#destroy"
    end 
end
