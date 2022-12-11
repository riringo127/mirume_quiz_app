class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all.sample(20)
  end

  def mistakes
    @user_choices = UserChoice.where(user_id: current_user.id).joins.(:choices).where{is_answer: "inccorect"}
    

    @quizzes = []
    @mistakes.each do |mis|
      @quizzes << mis.quiz
    end
  end
end
