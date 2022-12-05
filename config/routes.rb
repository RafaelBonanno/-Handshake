Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :trips do
    resources :categories, only: %i[show index]
  end
  resources :favorites, only: %i[destroy index show]
  get :dashboard, to: "pages#dashboard"
  post :favorites, to: "favorites#create_favorite"

end
