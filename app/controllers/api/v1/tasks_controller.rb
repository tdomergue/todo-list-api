class Api::V1::TasksController < Api::V1::BaseController
  def index
    @tasks = Task.all
  end
end
