Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # R all
  get '/tasks', to: 'tasks#index'
  # C
  get '/tasks/new', to: 'tasks#new', as: 'new'
  post '/tasks', to: 'tasks#create'
  # R one
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # U
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'
  # D
  delete 'tasks/:id', to: 'tasks#destroy'
end
