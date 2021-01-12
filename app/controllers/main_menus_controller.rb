class MainMenusController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_main_menu, only: [:edit, :show, :update]

  def index
    @main_menus = MainMenu.includes(:user).order("created_at DESC")
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

  def show
    # @main_menu = MainMenu.all.includes(:user)
  end

  def edit
    
  end

  def update
    if @main_menu.update(main_menu_params)
      redirect_to main_menu_path(@main_menu)
    else
      render :edit
    end
  end

  def destroy
    main_menu = MainMenu.find(params[:id])
    main_menu.destroy
  end

  private
  def main_menu_params
    params.require(:main_menu).permit(:name, :image, :expiration, :ingredient, :recipe, :kcal).merge(user_id: current_user.id)
  end

  def set_main_menu
    @main_menu = MainMenu.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
