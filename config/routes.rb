Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  root to: "posts#index"

  # get "/" => "posts#index"
  # get "posts/new" => "posts#new"
  # post "posts" => "posts#create"
  # get "posts/:id" => "posts#show"
  # get "posts/:id/edit" => "posts#edit"
  # put "posts/:id" => "posts#update"
  # delete "posts/:id" => "posts#destroy"
  #
  # get "comments" => "comments#index"
  # get "comments/new" => "comments#new"
  # post "comments" => "comments#create"
  # get "comments/:id" => "comments#show"
  # get "comments/:id/edit" => "comments#edit"
  # put "comments/:id" => "comments#update"
  # delete "comments/:id" => "comments#destroy"

end
