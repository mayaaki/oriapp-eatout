class Situation < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'お一人様' },
    { id: 3, name: '家族・子供と' },
    { id: 4, name: 'デート' },
    { id: 5, name: '女子会' },
    { id: 6, name: '合コン' },
    { id: 7, name: '宴会' },
    { id: 8, name: '記念日・誕生日' },
    { id: 9, name: '接待' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :records

  end