class TodosController < ApplicationController
  
  def new
    @todo = Todo.new
    @todo.plan_id = params[:plan_id]
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user_id = current_user.id
    if @todo.save
      redirect_to plan_path(id: @todo.plan_id), success: 'todoを作成しました'
    else
      flash.now[:danger] = 'todoの作成に失敗しました'
      render 'new'
    end
  end
  
  def edit
    @todo = Todo.find(params[:id])
    @plan = Plan.find(@todo.plan_id)
  end
  
  def update
    @todo = Todo.find(params[:id])
    @todo.list = params[:todo][:list]
    if @todo.save
      redirect_to plan_path(id: @todo.plan_id),success: '更新しました'
    else
      flash.now[:denger] = '更新に失敗しました'
      render 'edit'
    end
  end
  
  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to plan_path(current_plan)
  end

  private
  def todo_params
    params.require(:todo).permit(:list,:plan_id)
  end
end