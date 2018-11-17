Rails.application.routes.draw do
  get 'sample_two/index'
  get 'sample_one/index'
  get 'sample_three/index'
  root to: 'home#index'

  get 'ajax/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
