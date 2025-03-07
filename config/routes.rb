Rails.application.routes.draw do
  get "matches/index"
  get "matches/show"
  get "matches/create"
  get "matches/update"
  get "/player" => "player#index", as: :player

  # root "posts#index"
end
