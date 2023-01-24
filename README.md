[![Image from Gyazo](https://i.gyazo.com/fe53eca7570accf28ccf6bb599f3d80e.jpg)](https://gyazo.com/fe53eca7570accf28ccf6bb599f3d80e)
# mirume | パーソナルカラー色識別クイズアプリ
https://www.mirume-personalcolor.com/

## サービス概要
パーソナルカラーで色を識別できるようになりたい人に、
色を『みる目』を養うための学習環境を提供する、
パーソナルカラー識別クイズアプリです。

## 製作背景
パーソナルカラーとは、生まれ持ったボディーカラーをもとに個人（Personal）に似合う色（Color）を診断する手法です。
ここ数年で認知度が上がり、自分のパーソナルカラーのタイプ（春・夏・秋・冬の計4タイプ）を知っている人も増えました。
しかし、いざ自分のパーソナルカラーにあわせて洋服やコスメ等の商品を選ぼうと思っても、難しいというのが現状です。
なぜなら世の中で売られている大半の商品は、パーソナルカラーで分類されてはいないからです。

そこで、パーソナルカラーにあった色を選びたい人が、
商品の色を自分で識別できるようになるための、
『みる目』を鍛える学習環境を提供するアプリを作ることを考えました。

あえて「画像認識による識別アプリ」ではなく「学習アプリ」にした理由は、私の現職が理由です。
私は現在、パーソナルカラー診断アナリスト養成スクールを運営する会社に勤めています。
通われる生徒さんの学習効率を高めるような「ゲーミフィケーションな学習サービス」を作りたいと以前から考えていたため、
「学習アプリ」という手法を選択しました。

## メイン機能
### クイズ出題機能（要ログイン）
* ランダムに出題される色のパーソナルカラータイプを4択から選択肢し、解答することができます。
* 出題された色の正解率が表示され、問題の難易度を知ることができます。
* 1問解答するごとに答えが表示されます。
* 全20問中何問正解したか採点結果を最後に確認することができます。
[![Image from Gyazo](https://i.gyazo.com/040b14313fbb321bf4bcbc9994367672.png)](https://gyazo.com/040b14313fbb321bf4bcbc9994367672)
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
[![Image from Gyazo](https://i.gyazo.com/dfeee6b0e977c5ca1da2b1d768f9a562.png)](https://gyazo.com/dfeee6b0e977c5ca1da2b1d768f9a562)

### Twitterシェア機能
* クイズの採点結果をTwitterでシェアすることができます。
* 総クリア数をTwitterでシェアすることができます。
[![Image from Gyazo](https://i.gyazo.com/afd22ef7ceae2e2145f99bfc7fcfbd54.jpg)](https://gyazo.com/afd22ef7ceae2e2145f99bfc7fcfbd54)

### パーソナルカラーセルフ診断（ログイン不要)
* YES/NOチャート式のパーソナルカラーセルフ診断を体験できます。
[![Image from Gyazo](https://i.gyazo.com/8ab0a291c7e8ccc0d37b8d62fbe58854.png)](https://gyazo.com/8ab0a291c7e8ccc0d37b8d62fbe58854)

## 使用技術
| バックエンド | フロントエンド | インフラ・その他 |
| :---: | :---: | :---: |
| Ruby(3.1.3)<br>Ruby on Rails(6.1.7) | bootstrap<br>JavaScript | PostgreSQL<br>Heroku |

## ER図
[![Image from Gyazo](https://i.gyazo.com/ccd9ac4ba780845574772192820acc47.png)](https://gyazo.com/ccd9ac4ba780845574772192820acc47)

## 画面遷移図
[Figma](https://www.figma.com/file/m3zx6nplIatJjAKiIHF1aU/mirume?node-id=0%3A1&t=pQPgWhhduarVF1he-1)
