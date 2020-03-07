class QcontentsController < ApplicationController
  def new
    @q = Q.find(params[:q_id])
    @qcontent = Qcontent.new
  end
  
  def create
    @qcontent = Qcontent.new(qcontent_params)
    if @qcontent.save
      if params[:add_quiz]
        redirect_to new_category_q_qcontent_path(category_id: @qcontent.q.category_id, q_id: @qcontent.q_id), success: '引き続きクイズを作成してください'
      else
        redirect_to category_qs_path(category_id: @qcontent.q.category_id), success: 'クイズを作成しました'
      end
    else
      flash.now[:danger] = "クイズの作成に失敗しました"
      @q = @qcontent.q
      render 'new'
    end
  end
  
  private
  def qcontent_params
    params.require(:qcontent).permit(:q_id, :qsentence, :choice1, :choice2, :choice3)
  end
end
