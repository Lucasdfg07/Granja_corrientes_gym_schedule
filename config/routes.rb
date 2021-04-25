Rails.application.routes.draw do
  resources :bookings
  root "home#index"
end
