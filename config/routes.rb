Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    # get 'quizzes', to: 'quizzes#show'
    # get 'questions', to: 'questions#show'

    # resources :choices, except: [:edit, :update] do
    #   resources :result_beauty_routines, only: [:new, :create]
    # end
  # Defines the root path route ("/")
  # root "articles#index"
end
