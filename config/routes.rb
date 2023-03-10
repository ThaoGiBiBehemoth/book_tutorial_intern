Rails.application.routes.draw do

  root 'static_pages#home'
  get '/home',    to: 'static_pages#home'
  get '/help',    to: 'static_pages#help'    # , as: 'helf'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get '/new', to: 'users#new'
  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  get '/signin', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end
