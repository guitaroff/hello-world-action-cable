Rails.application.routes.draw do
  devise_for :users
  #get 'home/index'
  resource :home, only: :index
  root to: 'home#index'
end
