class UserChoicesController < ApplicationController
    
    def create
        @choice =Choice.find(params[:choice_id])
        UserChoice.create(user_id: current_user.id, choice_id: @choice.id)
    end

    def destroy
    end
end
