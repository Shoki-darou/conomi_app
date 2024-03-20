# テーブル設計

## Users テーブル（ユーザー）

| Column             | Type    | Options                        |
| ------------------ | ------- | ------------------------------ |
| email              | string  | null: false, unique: true      |
| encrypted_password | string  | null: false                    |
| name               | string  | null: false                    |
| gender             | string  | null: false                    |
| birthday           | date    | null: false                    |

### Association

- has_many :questions
- has_many :comments
- has_many :achievements
- has_many :favorites


## Questions テーブル（質問）

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| title       | string     | null: false |
| content     | text       | null: false |
| category_id | integer    | null: false |
| choice1     | string     | null: false |
| choice2     | string     | null: false |
| choice3     | string     |             |
| choice4     | string     |             |
| choice5     | string     |             |
| choice6     | string     |             |
| choice7     | string     |             |
| choice8     | string     |             |
| choice9     | string     |             |
| choice10    | string     |             |
| user        | references | null: false, foreign_key: true |

### Association

- has_many :comments
- belongs_to :user
- belongs_to :category


## Categories テーブル（カテゴリー）

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| category_name | string     | null: false                    |
| questions     | references | null: false, foreign_key: true |

### Association

- has_many :questions


## Comments テーブル（コメント）

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| text       | string     | null: false                    |
| question   | references | null: false, foreign_key: true |
| user       | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :question


## Achievements テーブル（成績）

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| user                  | references | null: false, foreign_key: true |
| itembest_answer_count | integer    | null: false                    |

### Association

- belongs_to :user


## Favorites テーブル（お気に入り）

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| question      | references | null: false, foreign_key: true |

### Association

- belongs_to :user


## article モデル

- belongs_to :gender_id
- belongs_to :category_id
