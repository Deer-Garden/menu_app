class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @main_menus = @user.main_menus
    @nickname = @user.nickname
    @like_main_menus = @user.like_main_menus
  end

  
end
