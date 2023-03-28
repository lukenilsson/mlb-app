Rails.application.routes.draw do
  get "/games" => "games#get_info"

  # resources :games
end
