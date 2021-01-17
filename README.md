# アプリケーション名
menu_app
# アプリケーション概要
献立の提案をみて献立のバリエーションを増やす
献立の投稿機能
# URL
# テスト用アカウント
# 利用方法
献立が思いつかないときにこのアプリケーションを見て気に入ったのを見つけてもらう
# 目指した課題解決
毎日何かと時間を取られる献立を自動化させて、少しでも家事の手間と時間を減らしQOLをあげたい
# 洗い出した用件
提案機能
ユーザー登録機能
ユーザー編集機能
ユーザー削除機能
献立投稿機能
献立編集機能
献立削除機能
献立提案機能
# 実装した機能についてのGIF
# 実装予定の機能
献立提案機能
献立検索機能
献立お気に入り機能

# データベース設計
# README

## usersテーブル
|  Column              |  Type  |  Option                 |
| -------------------- | ------ | ----------------------- |
| nickname             | string | null:false              |
| password             | string | null:false              |
| email                | string | null:false,unique: true |

### Association
- has_many :menus


## main_menusテーブル

|   Column      |  Type     |  Option                      |
| ------------- | --------- | ---------------------------- |
| name          | string    | null:false                   |
| ingredient    | text      | null:false                   |
| recipe        | string    | null:false                   |
| expiration    | text      | null:false                   |
| kcal          | integer   | null:false                   |
| user          | reference | null:false ,foreign_key: true|

### Association
<!-- - has_many :tags, through: menu_tag_relation -->
- belongs_to :user



<!-- ## tagsテーブル
|   Column      |  Type     |  Option                      |
| ------------- | --------- | ---------------------------- |
| name          | string    | null:false                   |

### Association
- has_many:main_menus, through: main_menu_tag_relation -->

# ローカルでの動作方法