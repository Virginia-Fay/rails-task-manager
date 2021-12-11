Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # list tasks
  get "tasks", to: "tasks#index"
  # add a new task  (Methode new avant read(id))
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  # view the details of a task
  get "tasks/:id", to: "tasks#show", as: :task

end
