FactoryBot.define do
  factory :record do
    recording_date       {'2023-10-03' }
    restaurant_name      {'サイゼリヤ'}
    price                {3000}
    prefecture_id        {40}
    city                 {'高槻市'}
    situation_id         {5}
    genre_id             {3}
    url                  {'https://www.noraya.com/senryuubosyuu/'}

    association :budget
  end
end
