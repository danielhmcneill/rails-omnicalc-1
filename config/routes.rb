Rails.application.routes.draw do
  root 'home#index'

  get 'square/new', to: 'calculations#new_square'
  get 'square/results', to: 'calculations#square_results'
  get 'square_root/new', to: 'calculations#new_square_root'
  get 'square_root/results', to: 'calculations#square_root_results'
  get 'payment/new', to: 'calculations#new_payment'
  get 'payment/results', to: 'calculations#payment_results'
  get 'random/new', to: 'calculations#new_random'
  get 'random/results', to: 'calculations#random_results'
  get 'howdy', to: 'home#hello'
  get 'goodbye', to: 'home#goodbye'
end
