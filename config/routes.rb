Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/' => 'application#index'

  resources :pages, only: %i[new create]
  get 'pages/:slug', to: 'pages#show'
  get 'pages/:slug/edit', to: 'pages#edit'
  put 'pages/:slug', to: 'pages#update'
end
