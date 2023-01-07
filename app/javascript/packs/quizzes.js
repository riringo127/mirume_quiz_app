$(function(){
    $(window).scroll(function(e){
        var classCount = $(".correct_answer_judgement").length; /* .correct_answer_judgementというクラスの数を取得 */
        $("p#count").text(classCount); /* p#countにクラスの数を表示 */
    });
});
  
// ツイートボタン押下時にテキストを動的に変更してツイート
document.getElementById("twitter-share-button").onclick = function() {
    // 出力結果を取得
    let title = "【パーソナルカラーで色分けクイズ】"
    let text = document.getElementById("tweet-text").innerText;
  
    // オプションパラメータを設定
    let hashtags = ["パーソナルカラー", "パーソナカラー診断" , "イエベ", "ブルベ", "パーソナルカラー色識別クイズアプリmirume"];
    let url = "https://www.mirume-personalcolor.com/"
  
    // URLを生成して遷移
    window.open("https://twitter.com/share?text=" + title + text  + "&hashtags=" + hashtags + "&url=" + url);
  }
  