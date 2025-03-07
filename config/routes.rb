Rails.application.routes.draw do
  get "/player" => "player#index", as: :player

  # root "posts#index"
end
