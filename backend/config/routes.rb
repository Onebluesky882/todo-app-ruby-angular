Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  namespace :api do
    namespace :v1 do
      resources :products

       get "cart/:user_id", to: "carts#show"

    post "cart/add_item", to: "carts#add_item"
    
    post "cart/checkout", to: "carts#checkout"
    
   delete 'cart/remove_item',

  to: 'carts#remove_from_cart'

    end
  end
end
