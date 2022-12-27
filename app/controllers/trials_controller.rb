class TrialsController < ApplicationController
  skip_before_action :require_login, only: %i[index correct incorrect]

  def index
    @quizzes = Quiz.find(Quiz::TRIAL)
  end
end
