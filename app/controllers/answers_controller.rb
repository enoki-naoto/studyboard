class AnswersController < ApplicationController
  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
    @category = Category.find(params[:category_id])
  end

  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    if @answer.save
      redirect_to category_question_path(category_id: @question.category_id,id: @question.id),success: '回答を投稿しました'
    else
      flash.now[:denger] = '回答の投稿に失敗しました'
      render 'new'
    end
  end
  
  def search
    @answers = Answer.where(user_id: current_user.id)
  end
  
  def destroy
    answer = Answer.find(params[:id])
    answer.destroy
    redirect_to search_category_question_answers_path(category_id: answer.question.category_id,question_id: answer.question_id,id: answer.id),success:'回答を削除しました'
  end
  
  private
  def answer_params
    params.require(:answer).permit(:question_id,:user_id,:ans)
  end
end
