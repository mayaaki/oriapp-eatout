class BudgetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @budgets = Budget.includes(:user).order('created_at DESC')
  end

  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)
    if @budget.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def budget_params
    params.require(:budget).permit(:first_date, :last_date, :budgets, :users).merge(user_id: current_user.id)
  end
end
