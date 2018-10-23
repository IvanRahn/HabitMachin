Rails.application.routes.draw do
  resources :logs
  devise_for :users, path: "", path_names: {sign_in: "login", sign_put: "logout", sign_up: "register"}
  root to: "home#index"
  get "/info" => "home#info"
  resources :habits #, :except => [:edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
