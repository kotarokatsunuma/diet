# テーブル設計

## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| email              | string   | null: false ,unique: true |
| encrypted_password | string   | null: false               |
| nickname           | string   | null: false               |
| birthday           | date     | null: false               | 
| family_name        | string   | null: false               |
| first_name         | string   | null: false               |
| family_name_kana   | string   | null: false               |
| first_name_kana    | string   | null: false               |


### Association

- has_many :posts
- has_many :comments
- has_one :calorie

## posts テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| text          | text       | null: false                    |
| user          | references | null: false, foreign_key: true |
| target_date   | integer    | null: false                    |
| genre_id      | integer    | null: false                    |


### Association

- has_one :calorie
- belongs_to :user
- belongs_to :category
- has_many :comments



## comments テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| text          | text       | null: false                    |
| post_id       | references | null: false, foreign_key: true |
| user_id       | references | null: false, foreign_key: true |

### Association

- belongs_to :post
- belongs_to :user

## categories テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| genre          | references | null: false, foreign_key: true |


### Association

- has_many :posts


## calories テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| kcal           | integer    | null: false                    |


### Association

- belongs_to :post
- belongs_to :user