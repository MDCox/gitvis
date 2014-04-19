Gitvis::Application.routes.draw do
  resources :organizations, only: [:index, :new, :create, :show]
  resources :main, only: :index
end
