class MainMenusController < ApplicationController
  def index
    @main_menus = MainMenu.all
  end

  def new
    @main_menu = MainMenu.new
  end

  def create
    @main_menu = MainMenu.new(main_menu_params)
    if @main_menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def main_menu_params
    params.require(:main_menu).permit(:name, :image, :expiration, :ingredient, :recipe, :kcal).merge(user_id: current_user.id)
end
