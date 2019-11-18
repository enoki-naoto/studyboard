class QuestionsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @question = Question.new
  end
  
  def create
    @question = Question.new(question_params)
    if @question.save!
      redirect_to category_questions_path(params[:category_id]),success: '質問を投稿しました'
    else
      flash.now[:denger] = '質問の投稿に失敗しました'
      render:new
    end
  end

  def index
    @category = Category.find(params[:category_id])
  end

  def show
    @question = Question.find(params[:id])
  end
  
  private
  def question_params
    params.require(:question).permit(:category_id,:user_id,:title,:content)
  end
    
end
