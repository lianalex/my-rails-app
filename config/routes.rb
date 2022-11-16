Rails.application.routes.draw do
  
  root "links#index"
  get "/words", to: "words#index"
  get "/products", to: "products#index"
  get "/scrapes", to: "scrapes#index"

  resources :products
  resources :pages
  resources :words do
    resources :sections
  end
  resources :scrapes
end