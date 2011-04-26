PairStream::Application.routes.draw do

  resources :links

  resources :streams do
    resources :posts
  end
  
  get 'home/main'

  devise_for :users

  root :to => "home#index"

  match '*a' => redirect('/') # send all random routes to root
end
