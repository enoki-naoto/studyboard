class BreaksController < ApplicationController
  
  def new
    @break = Break.new
    @break.stop = Time.new
    if @break.save!
      redirect_to study_time_path(id: @study_time.id), success: '勉強を中断します'
    else
      flash.now[:danger] = '失敗しました。操作をやり直してください'
      redirect_to study_time_path(id: @study_time.id)
    end
  end
  
end
