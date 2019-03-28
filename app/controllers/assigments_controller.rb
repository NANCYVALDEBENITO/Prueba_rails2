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
	def update
	end


end
