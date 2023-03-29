Rails.application.routes.draw do
  root "beers#index"
  #Users
  post "/users" => "users#create"

  #Beers
  get "/beers" => "beers#index"
  get "/beers/:id" => "beers#show"
  post "/beers" => "beers#create"
  patch "/beers/:id" => "beers#update"
  delete "beers/:id" => "beers#destroy"
  #Breweries
  get "/breweries" => "breweries#index"
  get "/breweries/:id" => "breweries#show"
  get "brewery_path" => "breweries#show"
  post "/breweries" => "breweries#create"
  patch "/breweries/:id" => "breweries#update"
  delete "breweries/:id" => "breweries#destroy"
  #Checkins
  get "/checkins" => "checkins#index"
  get "/checkins/:id" => "checkins#show"
  get "/new_checkin" => "checkins#new"
  post "/new_checkin" => "checkins#create"
  patch "/checkins/:id" => "checkins#update"
  delete "checkins/:id" => "checkins#destroy"
end
