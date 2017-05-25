Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :horntrips do
    resources :bookings, only: [:index, :show, :new, :create, :destroy]
    patch 'bookings/:id' => "bookings#confirm_booking", as: :confirm_booking
    put 'bookings/:id' => "bookings#cancel_booking", as: :cancel_booking
  end

  get "dashboard" => 'horntrips#dashboard'
  get "trips" => 'bookings#trips'
  mount Attachinary::Engine => "/attachinary"
end
