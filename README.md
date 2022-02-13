# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| age                | int    | null: false |
| sex                | int    | null: false |
| prefecture         | int | null: false |

### Association

- has_many :questions
- has_many :comments

## questions テーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| question      | text | null: false |
| choice_number | int    | null: false |
| user          | references | null: false, foreign_key: true |
| choice1  | string |  |
| choice2  | string |  |
| choice3  | string |  |
| choice4  | string |  |
| choice5  | string |  |
| choice6  | string |  |
| choice7  | string |  |
| choice8  | string |  |
| choice9  | string |  |
| choice10 | string |  |

### Association

- has_many :answers
- has_many :comments
- belongs_to :user

## answers テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| answer | int | null: false |
| content | string     |                                |
| user   | references | null: false, foreign_key: true |
| question | references | null: false, foreign_key: true |

### Association

- belongs_to :question
- belongs_to :user
