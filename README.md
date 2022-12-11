# mirume_quiz_app
# mirume(サービス名未定)

## サービス概要
パーソナルカラーで色を識別できるようになりたい人に、
色を『みる目』を養うための学習環境を提供する、
パーソナルカラー識別クイズアプリです。

## メインのターゲットユーザー
* パーソナルカラーに興味がある人
* パーソナルカラーにあわせて洋服やコスメ選びができるようになりたい人
* パーソナルカラーのプロになりたい人

## ユーザーが抱える課題
* 自分のパーソナルカラータイプを知っていても、商品の色をパーソナルカラーで識別できなければ、結局自分で似合う色を選べない。
* パーソナルカラーに特化した色識別アプリなどがなく、手軽に調べることもできない。
* パーソナルカラーの色について勉強したくても書籍しかない。ゲーミフィケーションに学べる学習ツールがない。

## 解決方法
色の識別をクイズ形式で出題することにより、ゲーミフィケーションな学習環境を提供する。
ユーザーは、能動的に「パーソナルカラーの色識別スキル」を学習することができる。

## 実装予定の機能
* 未ログインユーザー
    * ユーザーがTopページで下記の「概略説明コンテンツ」を読むことができる
        * 「このアプリについて」
        * 「パーソナルカラーとは」
        * 「パーソナルカラーの4タイプの特徴」（春・夏・秋・冬の計4タイプ）
        * 「パーソナルカラーの4タイプの色一覧」（春・夏・秋・冬の計4タイプ）
    * ユーザーがクイズページで「クイズ機能」を試すことができる
        * ランダムに10問出題
        * 正答率により「みるめ度」判定結果がでる（１〜4割正解：みるめなし,５〜８割正解：みるめ普通,9~10割正解：お目が高い！）
        * ユーザーが判定結果をSNSでシェアできる（※メイン機能から除外 MVPリリース後に実装）
    * ユーザーがセルフ診断ページで「パーソナルカラー診断」（チャート式）を受けることができる（※メイン機能から除外 MVPリリース後にできれば実装）
　　　　
* ログインユーザー
    * ユーザーがサインインページで、ユーザー登録できる（sorcery使用)
        * ニックネーム
        * メールアドレス
        * パスワード
    * ユーザーがログインページで、パスワードリセットできる
    * ユーザーがプロフィールページで、下記のプロフィールを編集できる
        * ニックネーム
        * メールアドレス
        * パスワード
    * クイズ機能
        * ユーザーがクイズページで、ランダムに20問出題されるクイズに答えることができる
        * 正答率により「みるめ度」判定結果がでる（１〜4割正解：みるめなし,５〜８割正解：みるめ普通,9~10割正解：お目が高い！）
        * ユーザーが判定結果をSNSでシェアできる（※メイン機能から除外 MVPリリース後に実装）
    * バッジ機能(メイン機能から除外、MVPリリース後にできれば実装）
        * ユーザーが「お目が高い」判定を受ける毎に、バッジページでスターバッジを1つ獲得できる
        * ユーザーがスターバッジを7つためると、バッジページで「達人」認定が獲得できる
        * ユーザーが達人認定をされたことをSNSでシェアできる
    * 復習機能
        * ユーザーが復習ページで、前回誤った問題(色）だけ出題されるクイズに答えることができる
        * ユーザーが復習ページで、ブックマークした問題だけ出題されるクイズに答えることができる
    * ブックマーク機能
        * ユーザーがクイズページで、任意の問題（色）をブックマークできる
    * お気に入り登録機能
        * ユーザーが色詳細ページで、任意の色をお気に入りに登録できる
    * 色一覧/色詳細機能
        * ユーザーが色一覧ページでパーソナルカラータイプ（春・夏・秋・冬）で色を絞り込み、一覧表示を見ることができる
        * ユーザーが色一覧ページで、お気に入り登録された色で絞り込み、一覧表示を見ることができる
        * ユーザーが色一覧ページで、色見本と色名を見ることができる
        * ユーザーが色一覧ページから、選択した任意の色の詳細ページに飛ぶことができる
        * ユーザーが色詳細ページで、色見本と色名とカラーコードを見ることができる
        * ユーザーが色一覧ページ上の検索フォームで、「色み」を絞り込むことができる（セレクト方式/選択肢：ピンク、赤、紫、青、緑、黄、オレンジ、茶、ベージュ、グレイ、白、黒)
        * ユーザーが色一覧ページで、色名オフモード（色名暗記モード）機能を使うことができる（※メイン機能から除外 MVPリリース後にできれば実装）

* 管理ユーザー
    * ログインユーザーの検索、一覧、詳細、編集
    * クイズの一覧、詳細、作成、編集、削除
    * 管理ユーザーの一覧、詳細、作成、編集、削除

* その他（MVPリリース後）
    * 独自ドメイン・SSL
    * METAタグ
    * OGP設定
    * 運営元/お問い合わせ
    * 利用規約/プライバシーポリシー
    * Google Search Console（robots.txtとサイトマップ）
    * Google Analytics

## 何故このアプリを作りたいのか？
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

## スケジュール
* 企画〜技術調査：11/27〆切
* README〜ER図作成：11/30 〆切
* メイン機能実装：12/1 - 12/23
* β版をRUNTEQ内リリース（MVP）：12/24〆切
* 本番リリース：1月/15

### 画面遷移図
Figma：https://www.figma.com/file/m3zx6nplIatJjAKiIHF1aU/mirume?node-id=0%3A1&t=pQPgWhhduarVF1he-1

### ER図
https://drive.google.com/file/d/1Gn2ExHKasWyGA8n8ACI0vTssHoQfmmZz/view?usp=sharing