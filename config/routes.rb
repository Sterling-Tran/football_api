Rails.application.routes.draw do
  get "matches/index" => "matches#index"
  get "matches/show" => "matches#show"
  get "matches/create" => "matches#create"
  get "matches/update" => "matches#update"
  get "/player" => "player#index", as: :player

  # root "posts#index"
end
