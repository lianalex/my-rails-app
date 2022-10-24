Rails.application.routes.draw do

  root "pages#index"

  get "/applycss", to: "pages#applycss"
  get "/applyhtml", to: "pages#applyhtml"
  get "/generator", to: "pages#generator"
  get "/scraper", to: "pages#scraper"
end