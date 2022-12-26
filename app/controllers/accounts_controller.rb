class AccountsController < ApplicationController
    def show; end
    
    def edit; end

    def update
        if current_user.update(user_params)
            redirect_to account_path, success: t('defaults.message.updated', item: User.model_name.human)
        else
            flash.now['danger'] = t('defaults.message.not_updated', item: User.model_name.human)
            render :edit
        end
    end

    def destroy
        current_user.destroy!
        redirect_to root_path, success: t('defaults.message.deleted', item: User.model_name.human)
    end

    private

    def user_params
        params.require(:user).permit(:name, :email)
    end
end
