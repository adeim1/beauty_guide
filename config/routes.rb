Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  get "/quizzes/:id", to: "quizzes#show"
  get "/questions/:id", to: "questions#show", as: "question"
  get "/routines/:id", to: "routines#show"
  post "/user_answers", to: "user_answers#create"
end

