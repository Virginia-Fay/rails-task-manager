class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new #instancie un objet Task (vide) pour le form for
  end

  def create
    @task = Task.new(task_params) #instancie une Task avec les donnees du user
    @task.save
    redirect_to tasks_path  #redirige vers la page qui affiche toutes les tasks
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    # paramètres autorisés dans formulaire
    params.require(:task).permit(:title, :details, :completed)
  end
end
