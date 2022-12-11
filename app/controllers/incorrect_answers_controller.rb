class IncorrectAnswersController < ApplicationController
    def create
        @quiz = Quiz.find(params[:quiz_id])
        IncorrectAnswer.create(user_id: current_user.id, quiz_id: @quiz.id)
    end

    def destroy
        @quiz =Quiz.find(params[:quiz_id])
        incorrect_answers = IncorrectAnswer.where(user_id: current_user.id, quiz_id: @quiz.id)
        incorrect_answers.destroy
    end
end
