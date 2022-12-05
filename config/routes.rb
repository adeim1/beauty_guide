Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  # resources :routines do
  #   collection do
  #     get :top
  #   end
  # end
  get "/routines/:id", to: "routines#show"
end

# resourses
