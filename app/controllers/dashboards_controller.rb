class DashboardsController < ApplicationController
  def top
    @count = current_user.correct_answers.select(:quiz_id).distinct.count
    @quizzes = Quiz.all
  end
end
