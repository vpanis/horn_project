Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :horntrips do
    resources :bookings, only: [:index, :show, :new, :create, :destroy]
  end
  get "dashboard" => 'horntrips#dashboard'
  mount Attachinary::Engine => "/attachinary"
end
