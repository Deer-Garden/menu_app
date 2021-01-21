class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @main_menus = user.main_menus
    @nickname = user.nickname
  end
  def destroy
    user = User.find(params[:id])
    user.destroy
  end
end
