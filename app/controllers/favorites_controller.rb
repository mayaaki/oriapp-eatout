class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(params[:user_id])
    @favorites = @user.favorites.includes(:record)
    favorite_records = Favorite.where(user_id: @user.id).pluck(:record_id)
    @records = Record.where(id: favorite_records).order(recording_date: :desc)
  end

  def create
    @record = Record.find(params[:record_id])
    favorite = current_user.favorites.build(record_id: params[:record_id])
    favorite.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @record = Record.find(params[:record_id])
    favorite = Favorite.find_by(record_id: params[:record_id], user_id: current_user.id)
    favorite.destroy
    respond_to do |format|
      format.js
    end
  end

end
