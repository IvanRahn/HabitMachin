Rails.application.routes.draw do
  devise_for :users, path: "", path_names: {sign_in: "login", sign_put: "logout", sign_up: "register"}
  root to: "home#index"
  resources :habits, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
