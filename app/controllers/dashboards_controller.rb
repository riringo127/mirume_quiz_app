class DashboardsController < ApplicationController
  def top
    @count = current_user.correct_answers.joins(quiz: :color).select(:color_id).distinct.count
    @colors = Color.all
  end
end
