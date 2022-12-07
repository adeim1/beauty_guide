Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  get "/quizzes/:id", to: "quizzes#show"
  get "/questions/:id", to: "questions#show", as: "question"
  get "/routines/:id", to: "routines#show"
  post "/user_answers", to: "user_answers#create"
  get "/user_routines/:id", to: "user_routines#show", as: "user_routine"



  # resources :routines do
  #   collection do
  #     get :top
  #   end
  # end
  get "/routines/:id", to: "routines#show"
  resources :products, only: :index
  get "/categories/:id", to: "categories#show", as: "category"
  resources :categories, only: :index
end
