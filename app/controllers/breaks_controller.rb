class BreaksController < ApplicationController
  
  def new
    @break = Break.new
    @study_time = StudyTime.find(params[:study_time_id])
    @break.stop = Time.new
    @break.user_id = current_user.id
    @break.study_time_id = params[:study_time_id]
    if @break.save!
      redirect_to study_time_path(id: @study_time.id,break_id: @break.id), success: '勉強を中断します'
    else
      flash.now[:danger] = '失敗しました。操作をやり直してください'
      redirect_to study_time_path(id: @study_time.id)
    end
  end
  
end
