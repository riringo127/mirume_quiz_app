$(function(){
    $(window).scroll(function(e){
        var classCount = $(".correct_answer_judgement").length; /* .correct_answer_judgementというクラスの数を取得 */
        $("p#count").text(classCount); /* p#countにクラスの数を表示 */
    });
});

// ツイートボタン押下時にテキストを動的に変更してツイート
document.getElementById("twitter-share-button").onclick = function() {
    // 出力結果を取得
    let title = "【パーソナルカラーで色を選びたいあなたに。クイズで色を見る目を鍛えるアプリmirume】"
    let text = document.getElementById("tweet-text").innerText;
  
    // オプションパラメータを設定
    let hashtags = ["パーソナルカラー", "パーソナルカラー色識別"];
    let url = encodeURIComponent(location.href)  // location.hrefは今いるURL
  
    // URLを生成して遷移
    window.open("https://twitter.com/share?text=" + text + title + "&hashtags=" + hashtags + "&url=" + url);
  }
  