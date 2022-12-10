class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all.sample(20)
  end

  def mistakes
    @mistakes = Mistake.where(user_id: current_user.id)
    @quizzes = []
    @mistakes.each do |mis|
      @quizzes << mis.quiz
    end
  end
end
