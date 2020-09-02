Rails.application.routes.draw do

#get '/users/:id/:emotion', to: 'users#emotion'

resources :users, only: [:create, :show] do
  resources :logs, only: [:index, :create]
end

get '/users/:id/:emotion', to: 'users#emotion'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
