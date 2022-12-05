Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/quizzes/:id", to: "quizzes#show"
  get "/questions/:id", to: "questions#show", as: "question"

  # resources :routines do
  #   collection do
  #     get :top
  #   end
  # end

  get "/routines/:id", to: "routines#show"
  post "/user_answers", to: "user_answers#create"
end

# resourses
