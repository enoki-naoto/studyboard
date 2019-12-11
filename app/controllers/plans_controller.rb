class PlansController < ApplicationController
  
  def new
    @plan = Plan.new
  end

  def create
    plan = Plan.new(user_id: current_user.id, plandate: Date.today)
    if plan.save
      redirect_to new_plan_todo_path(plan), success: '学習目標を作成しました'
    else
      flash.now[:danger]="学習目標の作成に失敗しました"
      render :new
    end
  end

  def show
    @plan = Plan.find(params[:id])
  end
  
  def update
    plan = Plan.find(params[:id])
    plan.achieve = params[:plan][:achieve]
    if plan.save!
      redirect_to plan_path(plan),success:"本日の目標達成度を登録しました"
    else
      flash.now[:danger]="失敗しました"
      render :show
    end
  end

end