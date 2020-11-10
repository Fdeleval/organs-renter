Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/',to: "pages#home"
  get  '/home/organs', to: "organs#index", as: :index
  get  '/home/show/', to: "organs#show", as: :show
  patch  '/home/show/edit', to: "organs#update"
  get '/home/show/new', to: "organs#new", as: :new
  post '/home/show/create', to: "organs#create"
  get  '/home/show/:id', to: "organs#edit", as: :edit
   get  '/home/booking/', to: "bookings#show"
  get  '/home', to: "pages#home"

end
