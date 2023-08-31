class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.date       :recording_date          , null: false
      t.string     :restaurant_name         , null: false
      t.integer    :price                   , null: false
      t.integer    :prefecture_id           , null: false
      t.string     :city                    , null: false
      t.integer    :situation_id            , null: false
      t.integer    :genre_id                , null: false
      t.text       :url                     , null: false
      t.references :budget                  , null: false, foreign_key: true
      t.timestamps
    end
  end
end
