Rails.application.routes.draw do
  
  root "links#index"
  get "/words", to: "words#index"

  
  resources :pages
  resources :words
end