class Record < ApplicationRecord

  with_options presence: true do
    validates :recording_date, format: { with: /\A\d{4}-\d{2}-\d{2}\z/ }
    validates :restaurant_name
    validates :price, numericality: { only_integer: true }
    validates :city, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  end

  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :situation_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :genre_id, numericality: { other_than: 1, message: "can't be blank" }

  belongs_to :budget
  # has_one :favorite

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :situation
  belongs_to :genre

end
