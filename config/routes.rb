Rails.application.routes.draw do
  #get 'tasks/index'
  resources :tasks, only: :index do
  	resources :assigments, only: [:create, :update]
  end
  root to: 'assigments#index'
  get 'assigments/tasks_list'
  get 'assigments/task_one'
  get 'assigments/task_two'
  get 'assigments/task_three'
  get 'assigments/task_four'
  get 'assigments/task_five'
  get 'assigments/task_six'
  get 'assigments/task_seven'
  get 'assigments/task_eigth'
  get 'assigments/task_nine'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users,  controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'

  }


end
