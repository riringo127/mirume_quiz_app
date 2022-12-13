class CorrectAnswersController < ApplicationController
    def create
        @quiz = Quiz.find(params[:quiz_id])
        current_user.correct_answers.create(quiz_id: @quiz.id)
    end
end
