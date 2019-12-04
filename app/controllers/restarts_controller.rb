class RestartsController < ApplicationController
  def new
    @restart = Restart.new
    @study_time = StudyTime.find(params[:study_time_id])
    @break = Break.find(params[:break_id])
    @restart.re = Time.new
    @restart.user_id = current_user.id
    @restart.study_time_id = params[:study_time_id]
    @restart.interval = @restart.re - @break.stop
    if @restart.save!
      redirect_to study_time_path(id: @study_time.id), success: '勉強を再開します'
    else
      flash.now[:danger] = '失敗しました。操作をやり直してください'
      redirect_to study_time_path(id: @study_time.id)
    end
  end
end
