class QuizzesController < ApplicationController
  def index
    @q = Quiz.ransack(params[:q])
    @quizzes = @q.result(distinct: true).where(quiz_format: 0).sample(20)
  end

  def is_spring
    @quizzes = Quiz.where(quiz_format: 1).sample(10)
  end

  def is_summer
    @quizzes = Quiz.where(quiz_format: 2).sample(10)
  end

  def is_autumn
    @quizzes = Quiz.where(quiz_format: 3).sample(10)
  end

  def is_winter
    @quizzes = Quiz.where(quiz_format: 4).sample(10)
  end

  def base
    @quizzes = Quiz.where(quiz_format: 5).sample(10)
  end

  def mistakes
    @q = current_user.incorrect_answers.ransack(params[:q])
    mistakes = @q.result(distinct: true).where(display: 0).select(:quiz_id).distinct
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
