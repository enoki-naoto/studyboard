class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
    @category = Category.all
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save!
      redirect_to tweets_index_path,success: '発言しました'
    else
      flash.now[:denger]= '発言に失敗しました'
      render:new
    end
  end

  def show
  end
  
  private
  def tweet_params
    params.require(:tweet).permit(:category_id,:user_id,:text)
  end
  
end
