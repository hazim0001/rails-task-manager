Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # CRUD- Actions
  # list all --> index
  get '/tasks', to: 'tasks#index'
  # specific details of a task --> show
  get '/tasks/new', to: 'tasks#new'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # adding new task divided into two 1. get with form that routes to post create
  # that one to save the task fetched from the form
  post 'tasks', to: 'tasks#create' # has no view
  # editing a task  divided into two same as create new
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # that one will patch instead of post
  patch '/tasks/:id', to: 'tasks#update' # has no view
  # delete by id
  delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task' # has no view
  # resources :tasks
end
