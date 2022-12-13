Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  get "/quizzes/:id", to: "quizzes#show"
  get "/questions/:id", to: "questions#show", as: "question"
  get "/routines/:id", to: "routines#show"
  post "/user_answers", to: "user_answers#create"
  resources :products, only: :index
  get "/user_routines/:id", to: "user_routines#show", as: "user_routine"
  get "/categories/:id", to: "categories#show", as: "category"
  resources :categories, only: :index
  get "/basics", to: "pages#basics"
end
