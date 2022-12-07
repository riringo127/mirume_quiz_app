class ColorsController < ApplicationController
  def index
    if params[:season]
      @colors = Color.where(season_type: params[:season])
    else
      @colors = Color.all
    end
  end

  def show
    @color = Color.find(params[:id])
  end
end
