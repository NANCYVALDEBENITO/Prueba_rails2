class AssigmentsController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@task = Task.find(params[:task_id])
		@assigment = Assigment.new(task: @task, user: current_user, complete: true )
		if @assigment.save
			redirect_to tasks_path, notice:'La tarea fue completada'
		else
			redirect_to tasks_path, alert: 'La tarea no fue ingresada'
		end
	end

	def index
		@assigments = current_user.assigments
	

		
	end

	def tasks_list
		@assigments = Assigment.all
		@users = User.all
		@tasks = Task.all
	end

	def task_one
		@assigments = Assigment.all
		@users = User.all
		@tasks = Task.all
	end
	def task_two
		@assigments = Assigment.all
		@users = User.all
		@tasks = Task.all
	end
	def task_three
		@assigments = Assigment.all
		@users = User.all
		@tasks = Task.all
	end
	def task_four
		@assigments = Assigment.all
		@users = User.all
		@tasks = Task.all
	end
	def task_five
		@assigments = Assigment.all
		@users = User.all
		@tasks = Task.all
	end
	def task_six
		@assigments = Assigment.all
		@users = User.all
		@tasks = Task.all
	end
	def task_seven
		@assigments = Assigment.all
		@users = User.all
		@tasks = Task.all
	end
	def task_eigth
		@assigments = Assigment.all
		@users = User.all
		@tasks = Task.all
	end
	def task_nine
		@assigments = Assigment.all
		@users = User.all
		@tasks = Task.all
	end
	def update
		
		if current_user.assigments.find(params[:id]).complete == false
			current_user.assigments.find(params[:id]).update(complete:true)
			redirect_to root_path
		else 
			current_user.assigments.find(params[:id]).update(complete:false)
			redirect_to root_path
		end
				
	end



end
