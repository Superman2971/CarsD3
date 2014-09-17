Rails.application.routes.draw do
  resources :datapoints

  resources :data

  get 'homes/index'
  get 'homes/test'

  # root path below
  root 'homes#index'

end
