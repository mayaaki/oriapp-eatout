# アプリケーション名
Eat Out!

# アプリケーション概要
外食費の予算を設定し記録・管理することで、罪悪感なく気軽に外食を楽しむことができる。

# URL

# テスト用アカウント
・BASIC認証ID：2222  
・BASIC認証パスワード：admin  
・test@test  
・techcamp39

# 利用方法
## 予算設定
1. トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う  
2. トップページ右側のAdd Budgetボタンから期間・予算・ユーザー人数を入力し、設定ボタンを押す
3. トップページにそのユーザーが設定した予算一覧が表示される

## 外食費などの記録入力
1. 予算設定一覧のAdd Recordボタンからその期間・予算に対する記録一覧ページに飛ぶ
2. 記録一覧ページ右側のAdd Recordボタンから記録詳細を入力し、記録ボタンを押す
3. 記録一覧ページには、トップページで設定した予算と、記録したもの全ての合計金額に対する円グラフが表示される
4. 円グラフにカーソルを当てると詳細金額が表示される
5. 記録一覧ページのそれぞれの記録の左側にある♡マークを押すとお気に入り登録ができる
6. お気に入り一覧ページへを押すと、そのユーザーのお気に入り一覧ページに遷移ができる

# アプリケーションを作成した背景
家族や友人に家計についてのヒアリングを行ったところ、外食費の管理が難しいということが判明した。課題を分析した結果、食費の管理アプリは存在するが、外食に特化したものが少ないため外食自体の節約や管理がしづらい状況であることがわかった。その結果、感覚的に外食費の管理をすることとなり、予想外の出費をしてしまったり、逆に気軽に外食ができなかったりするという問題があると仮説を立てた。そこで他にもこの問題を抱えている方も多いと推測し、手軽に外食を記録できるアプリを開発することとした。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1yvam_ESe6Im-jMSIgE8K8yWxBXCYQCt85avDeh9LuYc/edit#gid=560029838

# 実装した機能についての画像やGIFおよびその説明
## ログイン後のトップページ（予算一覧ページ）
[![Image from Gyazo](https://i.gyazo.com/97d8c00e6b2f1bc87ac86459e44f46d2.jpg)](https://gyazo.com/97d8c00e6b2f1bc87ac86459e44f46d2)


## 予算設定画面
[![Image from Gyazo](https://i.gyazo.com/597211ef99bb4e06089f6acd3f73864e.png)](https://gyazo.com/597211ef99bb4e06089f6acd3f73864e)

## 記録一覧ページ
[![Image from Gyazo](https://i.gyazo.com/270638021f3ed45cb286b81bb11f5279.gif)](https://gyazo.com/270638021f3ed45cb286b81bb11f5279)

## 記録設定画面
[![Image from Gyazo](https://i.gyazo.com/bbfba4cc9d81f6ccff8abb47aecbeb64.png)](https://gyazo.com/bbfba4cc9d81f6ccff8abb47aecbeb64)

# 実装予定の機能
現在、検索機能を実装中。
レストランのジャンルや、地域で検索を掛けられるように実装する予定。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/536d991fc870d405cba3f13ca6c79777.png)](https://gyazo.com/536d991fc870d405cba3f13ca6c79777)

## 開発環境
・フロントエンド
・バックエンド
・インフラ
・テスト
・Ruby/Ruby on Rails/Java script/MySQL/Github/Render/Visual Studio Code

## 工夫したポイント
