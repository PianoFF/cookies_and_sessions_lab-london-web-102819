Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "products#index" 

resources :products, only: [:index, :show]
post "/products", to: "products#add", as: "add_to_cart"

end

