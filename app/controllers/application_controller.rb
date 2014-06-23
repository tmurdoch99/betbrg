class ApplicationController < ActionController::Base
  protect_from_forgery
  
   

  
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def is_a_biz
	if signed_in?
  @is_biz = current_user.user(:business).nil?
  end
  end
  def after_sign_in_path_for(user_detail)
  user_detail_path(current_user.user_details(:id))
end
  
end
