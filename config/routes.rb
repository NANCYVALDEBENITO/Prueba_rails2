Rails.application.routes.draw do
  #get 'tasks/index'
  resources :tasks, only: :index do
  	resources :assigments, only: [:create, :update]
  end
  root to: 'assigments#index'
  get 'assigments/tasks_list'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users,  controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'

  }


end
