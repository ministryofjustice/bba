Bba::Application.routes.draw do
  resources :acronyms

  get 'define/:acronym' => 'acronyms#define'
  get 'auth/twitter/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  root :to => 'acronyms#index'
end
