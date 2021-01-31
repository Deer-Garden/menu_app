class LikesController < ApplicationController

  def create
    like = current_user.likes.build(main_menu_id: params[:main_menu_id])
    like.save
    redirect_to main_menus_path
  end

  def destroy
    like = Like.find_by(main_menu_id: params[:main_menu_id], user_id: current_user.id)
    like.destroy
    redirect_to main_menus_path
  end

end
