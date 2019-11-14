class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  add_flash_types :success, :info, :warning, :danger
  
  helper_method :current_user,:logged_in?,:current_plan,:created_plan?
  
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def current_plan
    @current_plan ||= Plan.find_by(date: Date.today,user_id: current_user.id)
  end

  def logged_in?
    !current_user.nil?
  end
  
  def created_plan?
    !current_plan.nil?
  end
  
end
