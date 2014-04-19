Gitvis::Application.routes.draw do
  root "main#index"
  resources :organizations, only: [:create, :show]
  resources :people, only: [:index, :create, :show]
end
