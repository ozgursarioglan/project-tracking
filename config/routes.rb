Rails.application.routes.draw do
  
  
devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  get '/login',      to: 'devise/sessions#new',  as: :login
  get '/register',      to: 'devise/registrations#new',  as: :register
  get '/account',      to: 'devise/registrations#edit',  as: :account
  get '/forgotpassword',      to: 'devise/passwords#new',  as: :forgotpassword
end

devise_for :users, components: {registrations: 'registrations', sessions: 'sessions'}

  resources :users 
  resources :projects
  resources :issues
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
