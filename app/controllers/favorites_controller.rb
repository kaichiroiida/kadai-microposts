class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  
  def create
    post = Micropost.find(params[:micropost_id])
    current_user.favo(post)
    flash[:success] = 'Postをお気に入り登録しました。'
    redirect_to root_path
  end

  def destroy
    post = Micropost.find(params[:micropost_id])
    current_user.unfavo(post)
    flash[:success] = 'Postのお気に入り登録を解除しました。'
    redirect_to root_path
  end
end
