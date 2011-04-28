PairStream::Application.routes.draw do

  resources :pending_streams

  resources :streams do
    resources :posts
    resources :links
  end

  match 'home' => 'home#main', :as => :home

  devise_for :users

  root :to => "home#index"

  match '*a' => redirect('/') # send all random routes to root
end
