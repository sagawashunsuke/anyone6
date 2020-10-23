# README
# 概要
貧富の差に関係なく、世界中の人が平等に購入できるグローバル宝くじ

# 工夫したポイント
* ゲストユーザーを追加した
* 動画を埋め込んだ事
* サービスの内容自体に大きな価値を見出している事

## フロントエンド
* HTML/CSS
* Javascript/jQuery
* Bootstrap
* Ruby
* Ruby on Rails

## バックエンド
* Ruby 2.6.5
* Ruby on Rails 6.0.3

# 環境開発
* MySQL

# 今後実装予定の機能
* 金額をリアルタイムに反映させるOdometerの実装
* チャット、コメント機能の実装



## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ------------|
| name               | string | null: false |
| email              | string | null: false |

### Association

- has_one :ticket
- has_one :order


## tickets テーブル

| Column           | Type       | Options               |
| ---------------- | ---------- | --------------------- |
| price            | integer    | null: false           |

### Association

- has_one :user
- has_one :order


## orders テーブル

| Column | Type       | Options               |
| ------ | ---------- | --------------------- |
| user   | references | null: false, FK: true |
| ticket | references | null: false, FK: true |

### Association

- has_one :user
- has_one :ticket