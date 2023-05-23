Rails.application.routes.draw do
  get 'documentales/index'
  get 'documentales/new'
  get 'estrenos/index'
  get 'estrenos/new'
  get 'peliculas/index'
  get 'peliculas/new'
  post 'peliculas', to: 'peliculas#create'
  post 'estrenos', to: 'estrenos#create'
  post 'documentales', to: 'documentales#create'
  root 'peliculas#index'
end
