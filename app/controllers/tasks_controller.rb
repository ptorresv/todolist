class TasksController < ApplicationController
    def index
        @tasks = Task.where(dateFinish: nil)
    end

    def new
        @task = Task.new
    end

    def show
        @task = Task.find(params[:id])
    end

    def create

        @task = Task.create(task_params)
        if @task.save
            redirect_to @task
        else
            render :new
        end
    end
    def edit
        @task = Task.find(params[:id])
    end
    
    def update
        @task = Task.find(params[:id])
        if @task.estado == "3"
            @task.dateFinish = Time.now
            @task.save
        end
        @task.update_attributes(task_params)
    end

    def task_params
        params.require(:task).permit(:name, :dateStart, :dateStop, :resposable, :estado)
      end
end
