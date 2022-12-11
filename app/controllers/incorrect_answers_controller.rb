class IncorrectAnswersController < ApplicationController
    def create
        @quiz = Quiz.find(params[:quiz_id])
        IncorrectAnswer.create(user_id: current_user.id, quiz_id: @quiz.id)
    end

    def destroy
        @quiz =Quiz.find(params[:quiz_id])
        IncorrectAnswer.where(user_id: current_user.id, quiz_id: @quiz.id).destroy_all
    end
end
