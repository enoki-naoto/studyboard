class StudyTimesController < ApplicationController
  
  def new
    @study_time = StudyTime.new
  end
  
  def create
    @study_time = StudyTime.new(user_id: current_user.id, studydate: Date.current, plan_id: current_plan.id)
    @study_time.start = Time.current
    if @study_time.save!
      redirect_to study_time_path(@study_time), success: '勉強を開始します'
    else
      flash.now[:danger] = '失敗しました。操作をやり直してください'
      render :new
    end
  end
  
  def show
    @study_time = StudyTime.find(params[:id])
    @plan = Plan.find(current_plan.id)
  end
  
  def newfinish
    @study_time = StudyTime.find(params[:id])
    @study_time.finish = Time.current
    if @study_time.save!
      redirect_to study_time_path(id: @study_time.id), success: '勉強を終了します'
    else
      flash.now[:danger] = '失敗しました。操作をやり直してください'
      render :show
    end
  end
  
end
