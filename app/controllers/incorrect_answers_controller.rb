class IncorrectAnswersController < ApplicationController
    def create
        @quiz = Quiz.find(params[:quiz_id])
        current_user.incorrect_answers.create(quiz_id: @quiz.id)
    end

    def destroy
        @quiz =Quiz.find(params[:quiz_id])
        current_user.incorrect_answers.where(quiz_id: @quiz.id).destroy_all
    end
end
