Rails.application.routes.draw do
  #get 'home/index'
  resource :home, only: :index
  root to: 'home#index'
end
