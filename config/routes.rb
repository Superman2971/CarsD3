Rails.application.routes.draw do

  get 'homes/index'
  get 'homes/timeline', to: 'homes#timeline'
  get 'homes/showreel', to: 'homes#d3ShowReel'
  get 'cars/index'
  get 'cars/timeline'
  get 'cars/showreel'

  # root path below
  root 'homes#index'

end
