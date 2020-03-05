class QsController < ApplicationController
  def index
    @qs = Q.where(category_id: params[:category_id])
    @category = Category.find(params[:category_id])
  end
  
  def new
    @q = Q.new
    @category = Category.find(params[:category_id])
  end
  
end
