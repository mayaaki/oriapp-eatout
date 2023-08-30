class Budget < ApplicationRecord
  belongs_to :user
  # has_many :records

  validates :first_date, :last_date, :budgets, :users, presence: true
end
