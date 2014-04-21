TodoList::Application.routes.draw do
  resources :todo_lists, only: [:index]
  get '/search', to: "todo_lists#search"
  root "todo_lists#index"
end
