class Admin::BaseController < ApplicationController
  before_action :check_admin
  layout 'admin/layouts/application'  #layout宣言
  
  private
  
  def not_authenticated
    flash[:warning] = 'Login required.'
    redirect_to admin_login_path
  end
  
  def check_admin
    redirect_to root_path, warning: 'Admin required.' unless current_user.admin?
  end
end
