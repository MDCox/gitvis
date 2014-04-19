Gitvis::Application.routes.draw do
  root "main#index"
  resources :organizations, only: [:index, :new, :create, :show]
  resources :main, only: :index
end
