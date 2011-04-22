PairStream::Application.routes.draw do

  devise_for :users

  root :to => "home#index"

  match '*a' => redirect('/') # send all random routes to root
end
