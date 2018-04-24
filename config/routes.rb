Rails.application.routes.draw do
  resources :actors_groups, path: '/tables/actorsGroups'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
