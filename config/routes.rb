Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tickets#index"
  post '/ticket/guest_sign_in', to: 'tickets#new_guest'
  resources :tickets do
    resources :orders
  end
end
