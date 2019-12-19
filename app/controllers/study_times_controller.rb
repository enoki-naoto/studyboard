class StudyTimesController < ApplicationController
  
  def new
    @study_time = StudyTime.new
  end
  
  def create
    @study_time = StudyTime.new(user_id: current_user.id, studydate: Date.current, plan_id: current_plan.id)
    @study_time.start = DateTime.current
    if @study_time.save!
      redirect_to study_time_path(@study_time), success: '勉強を開始します'
    else
      flash.now[:danger] = '失敗しました。操作をやり直してください'
      render :new
    end
  end
  
  def show
    @study_time = StudyTime.find(params[:id])
  end
  
  def newfinish
    @study_time = StudyTime.find(params[:id])
    @study_time.finish = DateTime.current
    #if @study_time.start.strftime("%Y%m%d") == @study_time.finish.strftime("%Y%m%d") 
    if @study_time.save!
        redirect_to study_time_path(id: @study_time.id), success: '勉強を終了します'
    else
        flash.now[:danger] = '失敗しました。操作をやり直してください'
        render :show
    end
  end
    #else
      #@study_time.finish = @study_time.start.end_of_day
      #@study_time.save
      #@study_time = StudyTime.create(start: DateTime.current.beginning_of_day, finish: DateTime.current, plan_id: current_plan.id)
    
      
  #end
  
end
