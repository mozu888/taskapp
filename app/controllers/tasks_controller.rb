class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # @task = Task.find(params[:id])
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end
  def show
    @tasks = Task.all
    @task = Task.find(params[:id])
  end
  private
  def task_params
    params.require(:task).permit(:title, :text, :date)
  end
end
