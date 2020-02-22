Rails.application.routes.draw do
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  resources :tweets do
    resources :comments, only: :create
  end

  get "/" => "home#top"
  get "about" => "home#about"
end