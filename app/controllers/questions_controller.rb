class QuestionsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @question = Question.new
  end
  
  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    if @question.save
      redirect_to category_questions_path(params[:category_id]),success: '質問を投稿しました'
    else
      flash.now[:denger] = '質問の投稿に失敗しました'
      @category = @question.category
      render 'new'
    end
  end

  def index
    @category = Category.find(params[:category_id])
  end

  def show
    @question = Question.find(params[:id])
  end
  
  def search
    @questions = Question.where(user_id: current_user.id)
  end
  
  def edit
    @question = Question.find(params[:id])
    @category = Category.find(params[:category_id])
  end
  
  def update
    question = Question.find(params[:id])
    question.title = params[:question][:title]
    question.content = params[:question][:content]
    if question.save
      redirect_to search_category_questions_path(category_id: question.category_id),success: '質問を更新しました'
    else
      flash.now[:denger] = '更新に失敗しました'
      render 'edit'
    end
  end
  
  
  #def destroy
   # question = Question.find(params[:id])
    #question.destroy
    #redirect_to questions_search_path,success:'質問を削除しました'
  #end
  
  private
  def question_params
    params.require(:question).permit(:category_id,:title,:content)
  end
    
end
