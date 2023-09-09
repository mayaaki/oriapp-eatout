class Record < ApplicationRecord

  with_options presence: true do
    validates :recording_date, format: { with: /\A\d{4}-\d{2}-\d{2}\z/ }
    validates :restaurant_name, length: { maximum: 20 }
    validates :price, numericality: { only_integer: true }
    validates :city, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  end

  validates :prefecture_id, numericality: { other_than: 1, message: "を選択してください" }
  validates :situation_id, numericality: { other_than: 1, message: "を選択してください" }
  validates :genre_id, numericality: { other_than: 1, message: "を選択してください" }

  belongs_to :budget
  has_one :favorite, dependent: :destroy

  def liked_by?(record, user)
    favorite = Favorite.find_by(record_id: record.id, user_id: user.id)
    favorite.present?
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :situation
  belongs_to :genre

end
