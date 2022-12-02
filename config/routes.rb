Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  get "/quizzez/:id", to: "quizzez#show"
  get "/routines/:id", to: "routines#show"
end
