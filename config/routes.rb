Rails.application.routes.draw do
  
  root "links#index"
  get "/words", to: "words#index"
  get "/products", to: "products#index"
  get "/scrapes", to: "scrapes#index"
  
  resources :products
  resources :pages
  resources :words
  resources :scrapes
end