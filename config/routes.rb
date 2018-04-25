Rails.application.routes.draw do
  root to: redirect('/tables')

  resource :session, only: %i[new create destroy]
  get "/tables", to: "tables#index"

  resources :actors_groups, path: "/tables/actorsGroups"

  # Default route (if unknown url)
  match "*path" => redirect("/tables"), via: [:get, :post]
end
