class AnswersController < ApplicationController
  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to category_question_path(category_id: @answer.question.category_id,id: @answer.question_id),success: '回答を投稿しました'
    else
      flash.now[:denger] = '回答の投稿に失敗しました'
      render:new
    end
  end
  
  private
  def answer_params
    params.require(:answer).permit(:question_id,:user_id,:ans)
  end
end
