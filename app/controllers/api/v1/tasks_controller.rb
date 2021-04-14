class Api::V1::TasksController < Api::V1::BaseController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      :index
    else
      render_error
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :deadline, :done)
  end

  def render_error
    render json: { errors: @task.errors.full_messages },
      status: :unprocessable_entity
  end
end
