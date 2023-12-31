# アプリケーション名
Eat Out!

# アプリケーション概要
外食費の予算を設定し記録・管理することで、罪悪感なく気軽に外食を楽しむことができます。

# URL
https://oriapp-eatout.onrender.com

# テスト用アカウント
・BASIC認証ID：2222  
・BASIC認証パスワード：admin  
・テスト用アカウントID：test1@test  
・テスト用アカウントPASS：techcamp39

# 利用方法
## 予算設定
1. トップページ（一覧ページ）のヘッダーからユーザー新規登録を行います  
2. トップページ右側のAdd Budgetボタンから期間・予算・ユーザー人数を入力し、設定ボタンを押します
3. トップページにそのユーザーが設定した予算一覧が表示されます

## 外食費などの記録入力
1. 予算設定一覧のAdd Recordボタンからその期間・予算に対する記録一覧ページに遷移します
2. 記録一覧ページ右側のAdd Recordボタンから記録詳細を入力し、記録ボタンを押します
3. 記録一覧ページには、トップページで設定した予算と、記録したもの全ての合計金額に対する円グラフが表示されます
4. 円グラフにカーソルを当てると詳細金額が表示されます

## お気に入り機能
1. 記録一覧ページのそれぞれの記録の左側にある♡マークを押すとお気に入り登録ができます
2. トップページのお気に入り一覧ページへを押すと、そのユーザーのお気に入り一覧ページに遷移ができます

# アプリケーションを作成した背景
<背景>  
私自身、毎月家計簿をつけており、日々の出費で外食費の節約が必要であることに気が付きました。
そこで、家族や友人にも家計についてのヒアリングを行ったところ、ついつい外食をしすぎてしまって食費が嵩んでしまうことが多く、節約をすべきとわかっていても外食費の管理をするということ自体が難しく、行動に移せないということが判明しました。  

<仮説>  
課題を分析した結果、食費の管理アプリは存在しますが、外食に特化したものが少ないため外食自体の節約や管理がしづらい状況であることがわかりました。その結果、感覚的に外食費の管理をすることとなり、予想外の出費をしてしまったり、逆に気軽に外食ができなかったりするという問題があると仮説を立てました。  

<検証>   
そこで他にもこの問題を抱えている方も多いと推測し、手軽に外食を記録できるアプリを開発することとしました。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1yvam_ESe6Im-jMSIgE8K8yWxBXCYQCt85avDeh9LuYc/edit#gid=560029838

# 実装した機能についての画像やGIFおよびその説明
## トップページ（ログイン前）
[![Image from Gyazo](https://i.gyazo.com/a41d250856599a3014606d2ab12fb749.jpg)](https://gyazo.com/a41d250856599a3014606d2ab12fb749)

## 新規登録ページ
[![Image from Gyazo](https://i.gyazo.com/2f38ffabd47b73cd18a7e3ffb70d6d58.png)](https://gyazo.com/2f38ffabd47b73cd18a7e3ffb70d6d58)
ヘッダーの新規登録を押すと、新規登録ページに遷移します。
必要事項を入力し、登録ボタンを押すと登録ができます。

## ログイン後のトップページ（予算一覧ページ）
[![Image from Gyazo](https://i.gyazo.com/a81bb59f53b0f240ce901c5c461a61ad.gif)](https://gyazo.com/a81bb59f53b0f240ce901c5c461a61ad)
※すでに2件予算の設定しています。設定日の新しい順に表示されます。


## 予算設定画面
[![Image from Gyazo](https://i.gyazo.com/ddefa56cd2bebc1519f8bff20b1bc4c3.gif)](https://gyazo.com/ddefa56cd2bebc1519f8bff20b1bc4c3)
予算設定フォームに全て記入し、設定を押すと予算一覧に反映されます。

[![Image from Gyazo](https://i.gyazo.com/bfedfebf29801e438d446ba5aac24ece.png)](https://gyazo.com/bfedfebf29801e438d446ba5aac24ece)
設定画面に入力エラーがあると、記入したものは消えず、エラー内容が表示されます。

## 予算編集と削除
### 編集
[![Image from Gyazo](https://i.gyazo.com/e4fec0149d2c7a1fb8a457ee3ac8c87e.gif)](https://gyazo.com/e4fec0149d2c7a1fb8a457ee3ac8c87e)
鉛筆マークにマウスオーバーすると編集か削除が選択できます。クリック後編集画面に遷移します。
### 削除
[![Image from Gyazo](https://i.gyazo.com/8ab79e3303499bd399de32b3bbc356e2.gif)](https://gyazo.com/8ab79e3303499bd399de32b3bbc356e2)
鉛筆マークから削除をクリックすると、削除して良いのかアラートが出て、OKとすると削除ができます。予算の中の記録も連動して削除されます。

## 記録一覧ページ
[![Image from Gyazo](https://i.gyazo.com/d72ff51922e91d79b88596f3272a6ffb.gif)](https://gyazo.com/d72ff51922e91d79b88596f3272a6ffb)
予算設定画面からAdd Recordボタンを押すと記録一覧ページに遷移します。  
すでに2件登録されていますが、なにも登録していない場合は下記のようなサンプルが表示されます。
[![Image from Gyazo](https://i.gyazo.com/077387d901ec66f276a549f9dc5cd95f.jpg)](https://gyazo.com/077387d901ec66f276a549f9dc5cd95f)

## 記録設定画面
### 設定画面
[![Image from Gyazo](https://i.gyazo.com/8bbddf84cdc1672b0ae71505c449ae94.gif)](https://gyazo.com/8bbddf84cdc1672b0ae71505c449ae94)
Add recordボタンを押すと記録設定の画面に遷移します。


[![Image from Gyazo](https://i.gyazo.com/fcacc0ea6cbe87026c5fdcf6935f0f75.gif)](https://gyazo.com/fcacc0ea6cbe87026c5fdcf6935f0f75)
入力エラーがあると、記入したものは消えず、エラー内容が表示されます。

### 一覧画面に反映、円グラフの表示
[![Image from Gyazo](https://i.gyazo.com/7ff54d73078eac8618678ace03c4e36f.gif)](https://gyazo.com/7ff54d73078eac8618678ace03c4e36f)
必須事項を全て記入し、記録ボタンを押すと記録一覧画面に反映されます。外食日の新しい順に表示されます。  
記録一覧画面には、記録の合計金額と予算に対する比率が一目でわかる円グラフが更新されます。  

[![Image from Gyazo](https://i.gyazo.com/ddbbd1c3221eef0fa154d6dceeecf4ec.gif)](https://gyazo.com/ddbbd1c3221eef0fa154d6dceeecf4ec)
円グラフにカーソルを合わせると内容の詳細が表示されます。

## 記録の詳細画面
[![Image from Gyazo](https://i.gyazo.com/9023206f69cb7c488cd711671d59245a.gif)](https://gyazo.com/9023206f69cb7c488cd711671d59245a)
鉛筆マークから詳細をクリックすると詳細ページに遷移し、詳細ページから編集ページにも遷移が可能です。

## 記録の編集・削除
### 編集
[![Image from Gyazo](https://i.gyazo.com/6066b11bfcd3029a148f3e4f7ad82427.gif)](https://gyazo.com/6066b11bfcd3029a148f3e4f7ad82427)
鉛筆マークから編集をクリックすると編集画面に遷移します。

### 削除
[![Image from Gyazo](https://i.gyazo.com/5520a8e0b5c7060903d794f245c286b3.gif)](https://gyazo.com/5520a8e0b5c7060903d794f245c286b3)
鉛筆マークから削除をクリックすると、削除して良いのかアラートが出て、OKとすると削除ができます。お気に入りをしている場合はその記録も連動して削除されます。


## お気に入り機能
[![Image from Gyazo](https://i.gyazo.com/96256bee6c88eaca1a5bbde76ed24165.gif)](https://gyazo.com/96256bee6c88eaca1a5bbde76ed24165)
ハートのボタンを押すとお気に入り登録・削除ができます。

[![Image from Gyazo](https://i.gyazo.com/f1d9ed5806f37f1162b4e0efea0f21c7.gif)](https://gyazo.com/f1d9ed5806f37f1162b4e0efea0f21c7)
トップページのお気に入り一覧へのボタンからはお気に入り一覧ページに遷移することができて、さらにそこから詳細ページに遷移もできます。詳細ページからは編集ページに遷移可能です。

## マイページの表示
[![Image from Gyazo](https://i.gyazo.com/a7a9e95672ea0a57be3fc7a1bcd02ebe.gif)](https://gyazo.com/a7a9e95672ea0a57be3fc7a1bcd02ebe)
ヘッダー部分のマイページからマイページ詳細が閲覧できます

# 実装予定の機能
現在レスポンシブ対応をするため（スマホ画面など）CSSの記述の修正を行っています。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/536d991fc870d405cba3f13ca6c79777.png)](https://gyazo.com/536d991fc870d405cba3f13ca6c79777)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/7edf1063cd6eb91866ca1c409e4fba9e.png)](https://gyazo.com/7edf1063cd6eb91866ca1c409e4fba9e)

# 開発環境
・フロントエンド 
Java script・HTML・CSS
・バックエンド 
Ruby/Ruby on Rails
・インフラ 
MySQL
・テスト 
Github/Render/Visual Studio Code

# 工夫したポイント
シンプルで使いやすいという点にこだわりました。
例えば、何のためのボタンなのかをアイコンに一言添えて記載していることで操作を読み取りやすくしました。
また、予算に対しての残高を円グラフで表し、感覚的にあとどのくらいの金額を使えるのかを一目でわかるようにしました。
簡易的で明るい見た目を心掛け、外食費を管理することをネガティブな気持ちではなく、気軽に楽しくできるようにコーディングしました。