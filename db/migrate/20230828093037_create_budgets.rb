class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.date       :first_date          , null: false
      t.date       :last_date           , null: false
      t.integer    :budgets             , null: false
      t.integer    :users               , null: false
      t.timestamps
    end
  end
end
