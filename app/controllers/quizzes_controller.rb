class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all.sample(20)
  end

  def mistakes
    mistakes = current_user.incorrect_answers.where(display: 0).select(:quiz_id).distinct
    @quizzes = []
    mistakes.each do |mis|
      @quizzes << mis.quiz
      @quizzes.sort_by! {rand}
    end
  end

  def bookmarks
    @quizzes = current_user.bookmark_quizzes.order(created_at: :desc)
  end
end
