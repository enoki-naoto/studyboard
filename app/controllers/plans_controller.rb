class PlansController < ApplicationController
  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(user_id: current_user.id, date: Date.today)
      if @plan.save
        redirect_to new_plan_todo_path(@plan), success: '学習目標を作成しました'
      else
        flash.now[:danger]="学習目標の作成に失敗しました"
        render :new
      end
  end
  
  def index
  end

  def show
    @plan = Plan.find(params[:id])
  end

end