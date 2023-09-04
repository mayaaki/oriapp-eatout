class RecordsController < ApplicationController
  before_action :authenticate_user!


  def index
    @budget = Budget.find(params[:budget_id])
    @records = Record.includes(:budget).order('recording_date DESC')
  end

  def new
    @budget = Budget.find(params[:budget_id])
    @record = Record.new
  end

  def create
    @budget = Budget.find(params[:budget_id])
    @record = Record.new(record_params)
    if @record.save
      redirect_to budget_records_path(@budget.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def record_params
    params.require(:record).permit(:recording_date, :restaurant_name, :price, :prefecture_id, :city, :situation_id, :genre_id, :url).merge(budget_id: params[:budget_id])
  end
end
