class ColorsController < ApplicationController
  def index
    @colors = Color.all
  end

  def show
  end
end
