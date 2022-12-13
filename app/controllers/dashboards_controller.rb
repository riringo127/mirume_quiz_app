class DashboardsController < ApplicationController
  def top
    @user = User.find(current_user.id)
    @count = current_user.correct_answers.select(:quiz_id).distinct.count
    @quizzes = Quiz.all
  end
end
