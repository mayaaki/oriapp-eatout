FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 4) }
    email                 { Faker::Internet.email }
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    prefecture_id         {3}
    city                  {'高槻市'}
    birth_date            { Faker::Date.backward }
  end
end
