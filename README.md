# アプリケーション名
menu_app

# アプリケーション概要
レシピの提案をみて献立のバリエーションを増やすことができる
自分が思いついたレシピの投稿ができる

# URL
https://menu-app32515.herokuapp.com/

# テスト用アカウント
アカウント名：テスト１  
email:sample@sample.gmail.com  
password: 000000

# 利用方法
献立が思いつかないときにこのアプリケーションを見て気に入ったのを見つけてもらう
レシピのおすすめを見て、献立を考える手間を減らす。
自分が思いついたレシピを投稿して、お気に入りの数で万人受けしているかわかる。

# 目指した課題解決
自炊をすることがあるのですが、いつも同じメニューになってしまっていました。その原因は、自らの献立のレパートリーが少ないことが原因でした。そこから一般的な料理はもちろんあまり知られていないレシピを受動的に知ることができるアプリを作りたかったので作成しました。
そして、毎日何かと時間を取られる献立を自動化させて、少しでも家事の手間と時間を減らすことで時間を捻出して有効活用したいと考えました。

# 洗い出した用件
提案機能  
ユーザー登録機能  
ユーザー編集機能  
ユーザー削除機能  
サインイン機能  
サインアウト機能  
献立投稿機能  
献立編集機能  
献立削除機能  
献立提案機能  

# 実装予定の機能
tag付け機能  
献立お気に入り機能

# 実装した機能についてのGIF

demo1  
![demo](https://gyazo.com/e8a11202074897fbff596d8302e2d55a/raw)  
demo2  
![demo](https://gyazo.com/3f353342d99753f3993a5196a293e461/raw)

# 工夫したポイント
特にスマートフォンでの使用を考えてビューを作成しました。画面がパソコンと比べると小さいので、トップページでは必要最低限の情報だけをみえるようにしました。

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
% git clone https://github.com/Deer-Garden/menu_app  
% cd menu_app  
% bundle install  
% rails db:create  
% rails db:migrate  
% rails s  
http://localhost:3000  
