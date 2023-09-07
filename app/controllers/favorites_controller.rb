class FavoritesController < ApplicationController
  before_action :set_record

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

  def set_record
    @record = Record.find(params[:record_id])
  end
end
