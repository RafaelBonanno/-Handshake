Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :trips do
    resources :categories, only: %i[show index]
  end
  get :dashboard, to: "pages#dashboard"
  post :favorite, to: "favorites#create_favorite"
  delete :favorite_delete, to: "favorites#destroy_favorite"
end
