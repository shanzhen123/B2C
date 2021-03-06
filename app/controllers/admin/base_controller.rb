class Admin::BaseController < ActionController::Base

  layout 'admin/layouts/admin'
  before_action :auth_admin


  private
  def auth_admin
  	unless logged_in? && current_user.is_admin?
  		flash[:notice] ='请以管理员登录'
  		redirect_to new_session_path
  	end
  end
end