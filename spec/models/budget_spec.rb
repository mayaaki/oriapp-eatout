require 'rails_helper'

RSpec.describe Budget, type: :model do
  before do
    @budget = FactoryBot.build(:budget)
  end

  describe '予算の設定' do
    context '予算の設定ができるとき' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@budget).to be_valid
      end
    end
    context '予算の設定ができないとき' do
      it '開始日は空では保存できない' do
        @budget.first_date = ''
        @budget.valid?
        expect(@budget.errors.full_messages).to include("開始日を入力してください")
      end
      it '開始日は正しい形式でないと保存できないこと' do
        @budget.first_date = '2023//10/01'
        @budget.valid?
        expect(@budget.errors.full_messages).to include("開始日は不正な値です")
      end
      it '終了日は空では保存できない' do
        @budget.last_date = ''
        @budget.valid?
        expect(@budget.errors.full_messages).to include("終了日を入力してください")
      end
      it '終了日は正しい形式でないと保存できないこと' do
        @budget.last_date = '2023/10//31'
        @budget.valid?
        expect(@budget.errors.full_messages).to include("終了日は不正な値です")
      end
      it '終了日は開始日より前では保存できない' do
        @budget.last_date = '2023-09-01'
        @budget.valid?
        expect(@budget.errors.full_messages).to include("終了日は開始日より後の日付を入力してください")
      end
      it '予算は空では保存できない' do
        @budget.budgets = ''
        @budget.valid?
        expect(@budget.errors.full_messages).to include("予算を入力してください")
      end
      it '予算は全角数字では保存できない' do
        @budget.budgets = '７７７'
        @budget.valid?
        expect(@budget.errors.full_messages).to include("予算は数値で入力してください")
      end
      it 'ユーザー数は空では保存できない' do
        @budget.users = ''
        @budget.valid?
        expect(@budget.errors.full_messages).to include("ユーザー数を入力してください")
      end
      it 'ユーザー数は全角数字では保存できない' do
        @budget.users = '７'
        @budget.valid?
        expect(@budget.errors.full_messages).to include("ユーザー数は数値で入力してください")
      end
      it 'userが紐付いていないと保存できない' do
        @budget.user = nil
        @budget.valid?
        expect(@budget.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
