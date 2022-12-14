class TrialsController < ApplicationController
  skip_before_action :require_login, only: %i[index correct incorrect]

  def index
    @quizzes = Quiz.find([15,69,119,71,53])
  end
end
