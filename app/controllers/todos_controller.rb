class TodosController < ApplicationController
  def new
    @todo = Todo.new
    @todo.user_id = current_user.id
    @todo.plan_id = params[:plan_id]
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save!
      redirect_to plan_path(params[:plan_id]), success: 'todoを作成しました。'
    else
      flash.now[:danger] = 'todoの作成に失敗しました'
      render:new
    end
  end

  def show
    @todo = Todo.where(id: params[:id])
    @plan = Plan.find(params[:plan_id])
  end

  private
  def todo_params
    params.require(:todo).permit(:list, :user_id, :plan_id)
  end
end
