Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/',to: "pages#home"
  get  '/home/organs', to: "organs#index"
  get  '/home/show/', to: "organs#show"
  get  '/home/booking/', to: "bookings#show"

  get  '/home', to: "pages#home"
end
