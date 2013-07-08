Fandagr::Application.routes.draw do

resources :movies, :tickets, :users

root :to => 'movies#index'

end
