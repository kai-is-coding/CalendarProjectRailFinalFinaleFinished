Rails.application.routes.draw do
  scope "/api" do
    post '/user_token' => 'user_token#create'
  end

  get '/profile' => 'users#show'
  resources :users, except: [:show]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'
  resources :appointments
  # resources :users
  resources :notes
end
