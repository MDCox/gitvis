Gitvis::Application.routes.draw do
  root "main#index"
  resources :organizations, only: [:index, :create, :show]
  resources :main, only: :index
  resources :people, only: [:index, :create, :show]
end
