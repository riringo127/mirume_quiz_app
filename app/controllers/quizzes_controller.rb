class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all.sample(20)
  end

  def mistakes
    mistakes = current_user.incorrect_answers.select(:quiz_id).distinct
    @quizzes = []
    mistakes.each do |mis|
      @quizzes << mis.quiz
      @quizzes.sort_by! {rand}
    end
  end
end
