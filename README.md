# README

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :comics
- has_many :posts
- has_one  :profile
- has_one  :like


## profiles テーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| like_category | string     |             |
| best_comic    | string     |             |
| introduction  | string     |             |
| user_id       | references | null: false, foreign_key: true|

### Association
- belongs_to  :user


## comics テーブル

| Column       | Type       | Options     |
| -------------| ---------- | ----------- |
| name         | string     | null: false |
| author       | string     | null: false |
| volume       | integer    | null: false |
| magazine_id  | string     | null: false |
| genre_id     | integer    | null: false |
| rate         | integer    |             |
| user_id      | references | null: false, foreign_key: true|

### Association
- has_many :posts
- has_one  :category
- has_one  :like
- belongs_to  :user


## categories テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| name        | string     | null: false |
| ancestor    | string     | null: false |

- belongs_to  :comic


## posts テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| text        | string     | null: false |
| user_id     | references | null: false, foreign_key: true|
| comic_id    | references | null: false, foreign_key: true|

- belongs_to  :user
- belongs_to  :comic

## likes テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| user_id     | references | null: false, foreign_key: true|
| comic_id    | references | null: false, foreign_key: true|

- belongs_to  :user
- belongs_to  :comic



