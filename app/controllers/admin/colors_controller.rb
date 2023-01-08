class Admin::ColorsController < Admin::BaseController
  before_action :set_color, only: %i[edit show update destroy]
  
  def index
    @colors = Color.all.order(created_at: :asc)
  end

  def show; end

  def edit; end

  def update
    if @color.update(color_params)
      redirect_to admin_colors_path, success: 'Color was successfully updated.'
    else
      flash.now['danger'] = 'Color update failed.'
      render :edit
    end
  end

  def destroy
    @color.destroy!
    redirect_to admin_colors_path, success: 'Color was successfully destroyed.'
  end

  private

  def set_color
    @color = Color.find(params[:id])
  end

  def color_params
    params.require(:color).permit(:name, :code, :css_class, :season_type, :category_id)
  end
end