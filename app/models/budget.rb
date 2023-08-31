class Budget < ApplicationRecord
  belongs_to :user
  # has_many :records

  validates :first_date, :last_date, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2}\z/ }
  validates :budgets, :users, presence: true
  validate :start_end_check

  def start_end_check
    if first_date.present? && last_date.present? && first_date >= last_date
      errors.add(:last_date, "cannot precede the start date.")
    end
  end
end