Gitvis::Application.routes.draw do
  get "organizations/index"
  get "organizations/new"
  get "organizations/create"
  get "organizations/show"
  resources :main, only: :index
end
