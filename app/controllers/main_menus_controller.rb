class MainMenusController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_main_menu, only: [:edit, :show, :update, :destroy]
  protect_from_forgery :except => [:destroy]

  def index
    @main_menus = MainMenu.includes(:user).order("created_at DESC")
    @m_menu = MainMenu.order("RAND()").limit(1)
  end

  def new
    @main_menu = MainMenu.new
  end

  def create
    @main_menu = MainMenu.new(main_menu_params)
    if @main_menu.valid?
      @main_menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    
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

  def likes
    @main_menus = current_user.like_main_menus.includes(:user).recent
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
