## テーブル設計

## tasksテーブル
| column      | type    | option      |
| ----------- | ------- | ----------- |
| title       | string  | null: false |
| text        | text    | null: false |
| date        | integer | null: false |

## association
belongs_to :user

## usersテーブル
| column             | type   | option                         |
| ------------------ | ------ | ------------------------------ |
| name               | string | null: false                    |
| email              | string | null: false, unique_keys: true |
| encrypted_password | string | null: false                    |

## association
has_many :tasks