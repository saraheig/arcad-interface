Rails.application.routes.draw do
  root to: redirect('/tables')

  resource :session, only: %i[new create destroy]
  get "/tables", to: "tables#index"

  resources :actors_groups, path: "/tables/actorsGroups"
  resources :actors, path: "/tables/actors"
  resources :instruments_groups, path: "/tables/instrumentsGroups"
  resources :instruments, path: "/tables/instruments"
  resources :domains, path: "/tables/domains"
  resources :competences, path: "/tables/competences"

  # Default route (if unknown url)
  match "*path" => redirect("/tables"), via: [:get, :post]
end
