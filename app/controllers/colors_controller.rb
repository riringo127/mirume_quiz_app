class ColorsController < ApplicationController
  def index
    if params[:season]
      @colors = Color.where(season_type: params[:season]).order(created_at: :asc)
    else
      @q = Color.ransack(params[:q])
      @colors = @q.result(distinct: true).order(created_at: :asc)
    end
  end

  def show
    @color = Color.find(params[:id])
  end

  def favorites
    @colors = current_user.favorite_colors.order(created_at: :desc)
  end
end
