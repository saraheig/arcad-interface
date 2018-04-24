Rails.application.routes.draw do

  get "/tables", to: "tables#index"
  resources :actors_groups, path: "/tables/actorsGroups"

  # Default route (if unknown url)
  match "*path" => redirect("/tables"), via: [:get, :post]
end
