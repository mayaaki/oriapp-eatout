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
  end

end
