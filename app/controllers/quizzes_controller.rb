class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all.sample(20)
  end

  def mistakes
    mistakes = IncorrectAnswer.select(:quiz_id).distinct.where(user_id: current_user.id)
    @quizzes = []
    mistakes.each do |mis|
      @quizzes << mis.quiz
      @quizzes.sort_by! {rand}
    end
  end
end
