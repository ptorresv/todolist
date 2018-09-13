class TasksController < ApplicationController
    def index
        @tasks = Task.all
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

    def task_params
        params.require(:task).permit(:tarea, :dateStart, :dateStop, :resposable, :estado)
      end
end
