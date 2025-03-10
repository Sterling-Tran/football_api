Rails.application.routes.draw do
  get "teams/" => "teams#index"
  post "teams/create" => "teams#create"
  get "teams/:id" => "teams#show"
  delete "teams/:id" => "teams#destroy"
  patch "teams/:id" => "teams#update"
  get "matches/" => "matches#index"
  get "matches/:id" => "matches#show"
  post "matches/create" => "matches#create"
  patch "matches/:id" => "matches#update"
  get "/player" => "player#index", as: :player

  # root "posts#index"
end
