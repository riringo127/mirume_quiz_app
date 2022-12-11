class CorrectAnswersController < ApplicationController
    def create
        @quiz = Quiz.find(params[:quiz_id])
        CorrectAnswer.create(user_id: current_user.id, quiz_id: @quiz.id)
    end
end
