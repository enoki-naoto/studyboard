class UsersController < ApplicationController
  def index
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path,success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  def show
    @user = User.find(current_user.id)
    @tweet = Tweet.new
    @category = Category.all
    @study_times = StudyTime.where(user_id: current_user.id)
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email,:password,:password_confirmation)
  end
end
