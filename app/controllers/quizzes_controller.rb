class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all.sample(20)
    @numbers = [*1..20]
  end
end
