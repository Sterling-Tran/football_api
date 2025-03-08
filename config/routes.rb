Rails.application.routes.draw do
  get "teams/index" => "teams#index"
  get "teams/create" => "teams#create"
  get "teams/show" => "teams#show"
  get "teams/destroy" => "teams#destroy"
  get "teams/update" => "teams#update"
  get "matches/index" => "matches#index"
  get "matches/show" => "matches#show"
  get "matches/create" => "matches#create"
  get "matches/update" => "matches#update"
  get "/player" => "player#index", as: :player

  # root "posts#index"
end
