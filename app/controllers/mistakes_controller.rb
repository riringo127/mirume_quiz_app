class MistakesController < ApplicationController
    before_action :set_quiz, only: %i[create destroy]
    def create
        Mistake.create(user_id: current_user.id, quiz_id: @quiz.id)
        redirect_back fallback_location: root_path
    end

    def destroy
        if mistake = Mistake.find_by(user_id: current_user.id, quiz_id: @quiz.id)
            mistake.delete
        end 
    end

    private
    
    def set_quiz
        @quiz = Quiz.find(params[:quiz_id])
    end
end
