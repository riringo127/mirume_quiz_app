class IncorrectAnswersController < ApplicationController
    def create
        @quiz = Quiz.find(params[:quiz_id])
        current_user.incorrect_answers.create(quiz_id: @quiz.id)
    end

    def update
        @quiz =Quiz.find(params[:quiz_id])
        current_user.incorrect_answers.where(quiz_id: @quiz.id).update_all(display: 1)
    end
end
