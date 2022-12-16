class TrialsController < ApplicationController
  skip_before_action :require_login, only: %i[index correct incorrect]

  def index
    @quizzes = Quiz.find([34,13,95,114,22])
  end
end
