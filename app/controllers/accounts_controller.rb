class AccountsController < ApplicationController
    before_action :set_user, only: %i[show edit update destroy]

    def show; end
    
    def edit; end

    def update
        if @user.update(user_params)
            redirect_to account_path, success: t('defaults.message.update', item: User.model.name_human)
        else
            flash.now['danger'] = t('defaults.message.not_updated', item: User.model_name.human)
            redirect :edit
        end
    end

    def destroy
        @user.destroy!
        redirect_to root_path, success: t('defaults.message.deleted', item: User.model_name.human)
    end

    private

    def set_user
        @user = User.find(current_user.id)
    end

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
