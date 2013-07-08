Fandagr::Application.routes.draw do
resources :sessions, :only => [:new, :create]
match "logout" => "sessions#destroy", :as => "logout"
match "login" =>  "sessions#new", :as => "login"

resources :movies, :tickets

resources :users, :only => [:new, :create]

root :to => 'movies#index'

end
