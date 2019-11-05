Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #READ
  get 'tasks', to: 'tasks#list', as: :tasks
  get 'tasks/new', to: 'tasks#new', as: :new
  get 'tasks/:id', to: 'tasks#show', as: :task
  #CREATE
  post 'tasks', to: 'tasks#create'
  #UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  #DESTROY
  delete 'tasks/:id', to: 'tasks#delete'
end
