class DashboardsController < ApplicationController
  def top
    @count = current_user.correct_answers.select(:quiz_id).distinct.count
    @quizzes = Quiz.where(quiz_format: 0)
  end
end
