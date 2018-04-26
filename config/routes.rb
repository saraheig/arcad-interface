Rails.application.routes.draw do
  resources :actors
  root to: redirect('/tables')

  resource :session, only: %i[new create destroy]
  get "/tables", to: "tables#index"

  resources :actors_groups, path: "/tables/actorsGroups"
  resources :actors, path: "/tables/actors"

  # Default route (if unknown url)
  match "*path" => redirect("/tables"), via: [:get, :post]
end
