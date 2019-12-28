class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @category = Category.all
  end

  def new
    @tweet = Tweet.new
    @category = Category.all
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to tweets_path,success: '発言しました'
    else
      flash.now[:denger]= '発言に失敗しました'
      @category = Category.all
      render 'new'
    end
  end

  def search
    if params[:category_id].present?
      @tweets = Tweet.where(category_id: params[:category_id])
    elsif params[:text].present?
      @tweets = Tweet.where('text Like ?', "%#{params[:text]}%")
    elsif params[:user_id].present?
      @tweets = Tweet.where(user_id: params[:user_id])
    else
      @tweets = Tweet.none
    end
  end
  
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to search_tweets_path(user_id: current_user.id),success:'ツイートを削除しました'
  end
  
  private
  def tweet_params
    params.require(:tweet).permit(:category_id,:user_id,:text)
  end
  
end
