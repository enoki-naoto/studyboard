class CategorysController < ApplicationController
 
  def new
    @category = Category.new
  end
  
  def create
    category = Category.new(category_params)
    if category.save
      redirect_to categorys_path(category),success:"カテゴリーの作成に成功しました"
    else
      flash.now[:danger] = "カテゴリーの作成に失敗しました"
      render 'new'
    end
  end
 
 
  def index
    @categorys = Category.all
  end
  
  private
  def category_params
    params.require(:category).permit(:name)
  end
end
