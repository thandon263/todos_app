Rails.application.routes.draw do
  get 'todo_items/create'

  resources :todo_lists do
      resources :todo_items
  end

  root "todo_lists#index"
end
