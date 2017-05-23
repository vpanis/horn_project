Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :horntrips
  get "bookings" => 'bookings#index'
  get "bookings" => 'bookings#show'
end
