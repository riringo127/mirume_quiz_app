[![Image from Gyazo](https://i.gyazo.com/fe53eca7570accf28ccf6bb599f3d80e.jpg)](https://gyazo.com/fe53eca7570accf28ccf6bb599f3d80e)
# mirume | パーソナルカラー色識別クイズアプリ
https://www.mirume-personalcolor.com/

## サービス概要
パーソナルカラーで色を識別できるようになりたい人に、
色を『みる目』を養うための学習環境を提供する、
パーソナルカラー識別クイズアプリです。

## 製作背景
### パーソナルカラーとは
パーソナルカラーとは、生まれ持ったボディーカラーをもとに個人（Personal）に似合う色（Color）を診断する手法です。

[![Image from Gyazo](https://i.gyazo.com/25848bf82702af2c09970419e5a8b357.png)](https://gyazo.com/25848bf82702af2c09970419e5a8b357)

[![Image from Gyazo](https://i.gyazo.com/7547ef43135649ab0873f5bb2e3ae129.png)](https://gyazo.com/7547ef43135649ab0873f5bb2e3ae129)

[![Image from Gyazo](https://i.gyazo.com/6bd51f8a6c2829fa12144ba463d0593d.png)](https://gyazo.com/6bd51f8a6c2829fa12144ba463d0593d)

### ユーザーの課題
ここ数年で認知度が上がり、自分のパーソナルカラーのタイプ（春・夏・秋・冬の計4タイプ）を知っている人も増えました。
しかし、いざ自分のパーソナルカラーにあわせて洋服やコスメ等の商品を選ぼうと思っても、難しいというのが現状です。
なぜなら世の中で売られている大半の商品は、パーソナルカラーで分類されてはいないからです。
また、いざ色の識別を勉強しようと思っても、教材は「書籍」や「診断用のドレープ（布）」しかなく、効率的な学習が難しいというのが現状です。

[![Image from Gyazo](https://i.gyazo.com/4a66815331c1aa3f13860e038668fb64.png)](https://gyazo.com/4a66815331c1aa3f13860e038668fb64)

そこで、パーソナルカラーにあった色を選びたい人が、
商品の色を自分で識別できるようになるための、
『みる目』を鍛える学習環境を提供するアプリを作ることを考えました。

あえて「画像認識による識別アプリ」ではなく「学習アプリ」にした理由は、私の現職が理由です。
私は現在、パーソナルカラー診断アナリスト養成スクールを運営する会社に勤めています。
通われる生徒さんの学習効率を高めるような「ゲーミフィケーションな学習サービス」を作りたいと以前から考えていたため、
「学習アプリ」という手法を選択しました。

## メイン機能
### クイズ出題機能（要ログイン）
* 4択クイズ（上級者向け）：ランダムに出題される色のパーソナルカラータイプを4択（春・夏・秋・冬）から選択肢し、解答することができます。
[![Image from Gyazo](https://i.gyazo.com/343d80c8787b94a807ef1a0a4bb7b8ad.gif)](https://gyazo.com/343d80c8787b94a807ef1a0a4bb7b8ad)

* 2択クイズ（初心者向け）：ランダムに出題される色が、該当のタイプか否かの2択で解答することができます。
[![Image from Gyazo](https://i.gyazo.com/1664d38283c4a508bdf19210c3d5cf22.gif)](https://gyazo.com/1664d38283c4a508bdf19210c3d5cf22)

* 色のカテゴリー（赤、青、黄など）で絞り込んだ出題が可能です。
* 出題された色の正解率が表示され、問題の難易度を知ることができます。
* 1問解答するごとに答えが表示されます。
* 全10or20問中何問正解したか採点結果を最後に確認することができます。
[![Image from Gyazo](https://i.gyazo.com/07043d73a9319d0731fdbfecec1d0de4.png)](https://gyazo.com/07043d73a9319d0731fdbfecec1d0de4)

### お試しクイズ出題機能（ログイン不要）
* ログインせずにお試しクイズ（5問の固定の色を出題）の体験ができます。
[![Image from Gyazo](https://i.gyazo.com/ffa37b8d3b86f5ab0c12f11c2aca8cb5.png)](https://gyazo.com/ffa37b8d3b86f5ab0c12f11c2aca8cb5)      

### 復習機能（要ログイン）
* 間違えた問題を自動で「間違えた問題リスト」に保存。復習ページで間違えた問題だけ出題されるクイズに答えることができます。
* 任意の問題を「ブックマーク」することができます。復習ページでブックマークした問題だけ出題されるクイズに答えることができます。
[![Image from Gyazo](https://i.gyazo.com/29ce09d00085d8f4f73553e8ea265b2d.png)](https://gyazo.com/29ce09d00085d8f4f73553e8ea265b2d)

### 色一覧（要ログイン）
* クイズに出題される色の一覧を見ることができます。
* パーソナルカラータイプ（スプリング・サマー・オータム・ウィンター）で絞り込みができます。
* 任意の色を「お気に入り」登録することができ、お気に入り登録した色で絞り込みができます。
* 色の系統カテゴリー（ピンク・赤・紫・青など）で絞り込むことができます。
[![Image from Gyazo](https://i.gyazo.com/1ab8fb98b77c650f275b9e518ee93ec6.png)](https://gyazo.com/1ab8fb98b77c650f275b9e518ee93ec6)

### 総クリア数（要ログイン）
* 全128色中、何色クリアしたかを確認することができます。
[![Image from Gyazo](https://i.gyazo.com/d5f75d0ce43ff882802842ba9bfe5413.gif)](https://gyazo.com/d5f75d0ce43ff882802842ba9bfe5413)

### Twitterシェア機能
* クイズの採点結果をTwitterでシェアすることができます。
* 総クリア数をTwitterでシェアすることができます。
[![Image from Gyazo](https://i.gyazo.com/afd22ef7ceae2e2145f99bfc7fcfbd54.jpg)](https://gyazo.com/afd22ef7ceae2e2145f99bfc7fcfbd54)

### パーソナルカラーセルフ診断（ログイン不要)
* YES/NOチャート式のパーソナルカラーセルフ診断を体験できます。
[![Image from Gyazo](https://i.gyazo.com/8ab0a291c7e8ccc0d37b8d62fbe58854.png)](https://gyazo.com/8ab0a291c7e8ccc0d37b8d62fbe58854)

## 運用実績
### UGC投稿
* 多くの方が採点結果や総クリア数をTwitterでシェアしてくださっています。
[![Image from Gyazo](https://i.gyazo.com/cddfe0efeadd5bdd445bc0463e0fab88.jpg)](https://gyazo.com/cddfe0efeadd5bdd445bc0463e0fab88)

### Twitterでの拡散活動
* Twitterで毎日色識別クイズを出題し、新規流入のための拡散活動を行なっています。
[![Image from Gyazo](https://i.gyazo.com/dc91d77680eceeba26f158b7a51db007.png)](https://gyazo.com/dc91d77680eceeba26f158b7a51db007)

### 現職（パーソナルカラープロ養成スクール）とのコラボ企画（調整中）
* 現在調整中
[![Image from Gyazo](https://i.gyazo.com/1200945fe46ec4d4a1e75149c097da41.png)](https://gyazo.com/1200945fe46ec4d4a1e75149c097da41)

### リリース1ヶ月でのPV/UU数
* PV数：4,108
* UU数：430

## 使用技術
| バックエンド | フロントエンド | インフラ・その他 |
| :---: | :---: | :---: |
| Ruby(3.1.3)<br>Ruby on Rails(6.1.7) | bootstrap<br>JavaScript | PostgreSQL<br>Heroku |

## ER図
[![Image from Gyazo](https://i.gyazo.com/8de672de49ae79485d9e9f7e54be3b41.png)](https://gyazo.com/8de672de49ae79485d9e9f7e54be3b41)

## 画面遷移図
[Figma](https://www.figma.com/file/m3zx6nplIatJjAKiIHF1aU/mirume?node-id=0%3A1&t=pQPgWhhduarVF1he-1)
