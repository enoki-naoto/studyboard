class QsController < ApplicationController
  def index
    @qs = Q.where(category_id: params[:category_id])
    @category = Category.find(params[:category_id])
  end
  
  def new
    @q = Q.new
    @category = Category.find(params[:category_id])
  end
  
  def create
    @q = Q.new(q_params)
    if @q.save
      redirect_to new_category_q_qcontent_path(category_id: @q.category_id, q_id: @q.id), success: '続いてクイズの内容の作成をしてください'
    else
      flash.now[:danger] = "クイズの作成に失敗しました"
      @category = @q.category
      render 'new'
    end
  end
  
  private
  def q_params
    params.require(:q).permit(:category_id, :user_id, :qtitle)
  end
  
end
