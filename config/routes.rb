PairStream::Application.routes.draw do

  root :to => "home#index"

  match '*a' => redirect('/') # send all random routes to root
end
