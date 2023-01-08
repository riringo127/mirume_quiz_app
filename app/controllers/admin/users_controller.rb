class Admin::UsersController < Admin::BaseController
    before_action :set_user, only: %i[edit show update destroy]
  
    def index
      @users = User.all.order(created_at: :asc)
    end
  
    def show; end
  
    def edit; end
  
    def update
      if @user.update(user_params)
        redirect_to admin_users_path, success: 'User was successfully updated.'
      else
        flash.now['danger'] = 'User update failed.'
        render :edit
      end
    end
  
    def destroy
      @user.destroy!
      redirect_to admin_users_path, success: 'User was successfully destroyed.'
    end
  
    private
  
    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :role)
    end
  end