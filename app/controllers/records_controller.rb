class RecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_budget, except: [:destroy]
  before_action :set_record, only: [:show, :edit, :update]


  def index
    @records = Record.includes(:budget).order('recording_date DESC')
    
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if valid_recording_date? && @record.save
      redirect_to budget_records_path(@budget.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @record.update(record_params)
      redirect_to budget_records_path(@budget.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    record = Record.find(params[:id])
    budget = Budget.find(params[:budget_id])
    record.destroy
    redirect_to budget_records_path(budget.id)
  end

  private

  def record_params
    params.require(:record).permit(:recording_date, :restaurant_name, :price, :prefecture_id, :city, :situation_id, :genre_id, :url).merge(budget_id: params[:budget_id])
  end

  def set_budget
    @budget = Budget.find(params[:budget_id])
  end

  def set_record
    @record = Record.find(params[:id])
  end

  def valid_recording_date?
    if @record.recording_date != nil && @record.recording_date >= @budget.first_date && @record.recording_date <= @budget.last_date
      return true
    else
      @record.errors.add(:recording_date, "Recording date is outside the valid range")
      return false
    end
  end
end
