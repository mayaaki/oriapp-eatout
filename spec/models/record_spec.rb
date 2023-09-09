require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @record = FactoryBot.build(:record)
  end

  describe '予算の設定' do
    context '予算の設定ができるとき' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@record).to be_valid
      end
      it 'URLは入力されていなくても保存できること' do
        @record.url =''
        expect(@record).to be_valid
      end
    end
    context '予算の設定ができないとき' do
      it '外食日は空では保存できない' do
        @record.recording_date = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("外食日を入力してください")
      end
      it '外食日は正しい形式でないと保存できないこと' do
        @record.recording_date = '2023//10/01'
        @record.valid?
        expect(@record.errors.full_messages).to include("外食日は不正な値です")
      end
      it 'レストラン名は空では保存できない' do
        @record.restaurant_name = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("レストラン名を入力してください")
      end
      it 'レストラン名は20文字以上では保存できない' do
        @record.restaurant_name = 'ｘｘｘｘｘｘｘｘｘｘｘｘｘｘｘｘｘｘｘｘｘ'
        @record.valid?
        expect(@record.errors.full_messages).to include("レストラン名は20文字以内で入力してください")
      end
      it '使った金額は空では保存できない' do
        @record.price = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("価格を入力してください")
      end
      it '使った金額は全角数字では保存できない' do
        @record.price = '７７７'
        @record.valid?
        expect(@record.errors.full_messages).to include("価格は数値で入力してください")
      end
      it 'prefecture_idが初期値だと保存できない' do
        @record.prefecture_id = '1'
        @record.valid?
        expect(@record.errors.full_messages).to include("都道府県を選択してください")
      end
      it 'cityが空では登録できない' do
        @record.city = ''
        @record.valid?
        expect(@record.errors.full_messages).to include("市区町村を入力してください")
      end
      it 'cityが日本語以外だと保存できない' do
        @record.city = 'takatsuki'
        @record.valid?
        expect(@record.errors.full_messages).to include("市区町村は不正な値です")
      end
      it 'situation_idが初期値だと保存できない' do
        @record.situation_id = '1'
        @record.valid?
        expect(@record.errors.full_messages).to include("利用シーンを選択してください")
      end
      it 'genre_idが初期値だと保存できない' do
        @record.genre_id = '1'
        @record.valid?
        expect(@record.errors.full_messages).to include("料理ジャンルを選択してください")
      end
      it 'budgetが紐付いていないと保存できない' do
        @record.budget = nil
        @record.valid?
        expect(@record.errors.full_messages).to include('Budgetを入力してください')
      end
    end
  end
end
