Rails.application.routes.draw do

  get 'homes/index', to: 'homes#index'
  get 'homes/timeline', to: 'homes#timeline'
  get 'homes/showreel', to: 'homes#d3ShowReel'
  get 'cars/index', to: 'cars#index'
  get 'cars/timeline', to: 'cars#timeline'
  get 'cars/showreel', to: 'cars#showreel'

  # root path below
  root 'homes#index'

end
