class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '和食' },
    { id: 3, name: '洋食' },
    { id: 4, name: '中華' },
    { id: 5, name: 'アジア・エスニック' },
    { id: 6, name: 'カレー' },
    { id: 7, name: '焼肉' },
    { id: 8, name: '居酒屋' },
    { id: 9, name: 'ラーメン' },
    { id: 10, name: 'カフェ・スイーツ' },
    { id: 11, name: 'パン' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :records

  end