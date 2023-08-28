# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | --------------------------|
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| prefecture_id      | integer| null: false               |
| city               | string | null: false               |
| anniversary_date   | date   | null: false               |


### Association
- has_many :budgets
- has_many :records




## budgetsテーブル

| Column                 | Type       | Options                       |
| ---------------------- | ---------- | ------------------------------|
| item_name              | string     | null: false                   |
| item_text              | text       | null: false                   |
| category_id            | integer    | null: false                   |
| status_id              | integer    | null: false                   |
| responsibility_id      | integer    | null: false                   |
| prefecture_id          | integer    | null: false                   |
| schedule_delivery_id   | integer    | null: false                   |
| price                  | integer    | null: false                   |
| user                   | references | null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :records




## recordsテーブル

| Column                 | Type       | Options                       |
| ---------------------- | ---------- | ------------------------------|
| date                   | date       | null: false                   |
| restaurant_name        | string     | null: false                   |
| price                  | integer    | null: false                   |
| prefecture_id          | integer    | null: false                   |
| city                   | string     | null: false                   |
| situation_id           | integer    | null: false                   |
| genre_id               | integer    | null: false                   |
| url                    | text       | null: false                   |
| budget                 | references | null: false, foreign_key: true|

### Association
- belongs_to :budget
- has_one :favorite





## favoritesテーブル
| Column             | Type      | Options                       |
| ------------------ | --------- | ------------------------------|
| user               | references| null: false, foreign_key: true|
| record             | references| null: false, foreign_key: true|


### Association
- belongs_to :user
- belongs_to :records
