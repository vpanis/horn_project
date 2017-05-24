Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :horntrips
  get "bookings" => 'bookings#index'
  get "bookings" => 'bookings#show'
  get "dashboard" => 'horntrips#dashboard'
  get "trips" => 'bookings#trips'
  mount Attachinary::Engine => "/attachinary"
end
