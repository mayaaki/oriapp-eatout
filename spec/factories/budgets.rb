FactoryBot.define do
  factory :budget do
    first_date           {'2023-10-01' }
    last_date            {'2023-10-31' }
    budgets              {30000}
    users                {2}

    association :user
  end
end
