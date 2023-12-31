class BudgetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_budget, only: [:edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    if user_signed_in?
      @budgets = Budget.includes(:user).where(user_id: current_user.id).order(first_date: :desc)
    end
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

  def edit
  end

  def update
    if @budget.update(budget_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    budget = Budget.find(params[:id])
    budget.destroy
    redirect_to root_path
  end

  private

  def budget_params
    params.require(:budget).permit(:first_date, :last_date, :budgets, :users).merge(user_id: current_user.id)
  end

  def set_budget
    @budget = Budget.find(params[:id])
  end

  def move_to_index
    if current_user.id != @budget.user.id
      redirect_to action: :index
    end
  end
end
