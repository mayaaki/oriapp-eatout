class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_record, only: [:create, :destroy]

  def index
    @user = User.find(params[:user_id])
    @favorites = @user.favorites.includes(:record)
    favorite_records = Favorite.where(user_id: @user.id).pluck(:record_id)
    @records = Record.where(id: favorite_records).order(recording_date: :desc)
  end

  def create
    favorite = current_user.favorites.build(record_id: params[:record_id])
    favorite.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    favorite = Favorite.find_by(record_id: params[:record_id], user_id: current_user.id)
    favorite.destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def set_record
    @record = Record.find(params[:record_id])
  end
end
