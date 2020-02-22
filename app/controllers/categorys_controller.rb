class CategorysController < ApplicationController
 
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categorys_path(@category),success:"カテゴリーの作成に成功しました"
    else
      flash.now[:danger] = "カテゴリーの作成に失敗しました"
      render 'new'
    end
  end
 
 
  def index
    @categorys = Category.all
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to categorys_path,success: 'カテゴリを更新しました'
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categorys_path,success: 'カテゴリを削除しました'
  end
  
  def qindex
    @categorys = Category.all
  end
  
  private
  def category_params
    params.require(:category).permit(:name)
  end
end
