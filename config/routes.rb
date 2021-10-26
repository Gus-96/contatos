Rails.application.routes.draw do
  resources :telefones
  root to: "pessoas#index"
  resources :pessoas
  resources :generos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end