Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "organs#index"

  # pages
  get  '/home', to: "pages#home", as: :user_root

  get '/home/:user_id', to: "organs#myOrgans", as: :my_organs

  # About pages
  get  '/values', to: "pages#values"
  get  '/career', to: "pages#career"
  get  '/faqs', to: "pages#faqs"
  get  '/who', to: "pages#who"



  resources :organs do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  resources :bookings, only: [:destroy, :index, :create]


end
