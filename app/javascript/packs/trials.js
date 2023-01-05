$(function() {
    let score = 0;

    $(".js-incorrect-btn-for-trial-quiz-1").on("click", function() {
      $("#js-choice-buttons-for-trial-quiz-1").addClass("hidden");
      $("#js-incorrect-answer-for-trial-quiz-1").removeClass("hidden");
    });

    $(".js-correct-btn-for-trial-quiz-1").on("click", function() {
      $("#js-choice-buttons-for-trial-quiz-1").addClass("hidden");
      $("#js-correct-answer-for-trial-quiz-1").removeClass("hidden");
      score++;
    });

    $(".js-incorrect-btn-for-trial-quiz-2").on("click", function() {
      $("#js-choice-buttons-for-trial-quiz-2").addClass("hidden");
      $("#js-incorrect-answer-for-trial-quiz-2").removeClass("hidden");
    });

    $(".js-correct-btn-for-trial-quiz-2").on("click", function() {
      $("#js-choice-buttons-for-trial-quiz-2").addClass("hidden");
      $("#js-correct-answer-for-trial-quiz-2").removeClass("hidden");
      score++;
    });

    $(".js-incorrect-btn-for-trial-quiz-3").on("click", function() {
      $("#js-choice-buttons-for-trial-quiz-3").addClass("hidden");
      $("#js-incorrect-answer-for-trial-quiz-3").removeClass("hidden");
    });
  
    $(".js-correct-btn-for-trial-quiz-3").on("click", function() {
      $("#js-choice-buttons-for-trial-quiz-3").addClass("hidden");
      $("#js-correct-answer-for-trial-quiz-3").removeClass("hidden");
      score++;
    });

    $(".js-incorrect-btn-for-trial-quiz-4").on("click", function() {
      $("#js-choice-buttons-for-trial-quiz-4").addClass("hidden");
      $("#js-incorrect-answer-for-trial-quiz-4").removeClass("hidden");
    });
    
    $(".js-correct-btn-for-trial-quiz-4").on("click", function() {
      $("#js-choice-buttons-for-trial-quiz-4").addClass("hidden");
      $("#js-correct-answer-for-trial-quiz-4").removeClass("hidden");
      score++;
    });

    $(".js-incorrect-btn-for-trial-quiz-5").on("click", function() {
      $("#js-choice-buttons-for-trial-quiz-5").addClass("hidden");
      $("#js-incorrect-answer-for-trial-quiz-5").removeClass("hidden");
    });
      
    $(".js-correct-btn-for-trial-quiz-5").on("click", function() {
      $("#js-choice-buttons-for-trial-quiz-5").addClass("hidden");
      $("#js-correct-answer-for-trial-quiz-5").removeClass("hidden");
      score++;
    });

    $(window).scroll(function(e){
      $("p#count").text(score); /* p#countにscoreを表示 */
    });
    
  });

// ツイートボタン押下時にテキストを動的に変更してツイート
document.getElementById("twitter-share-button").onclick = function() {
  // 出力結果を取得
  let title = "【パーソナルカラーで色分けクイズ】"
  let text = document.getElementById("tweet-text").innerText;

  // オプションパラメータを設定
  let hashtags = ["パーソナルカラー", "パーソナカラー診断" , "イエベ", "ブルベ", "mirume"];
  let url = encodeURIComponent(location.href)  // location.hrefは今いるURL

  // URLを生成して遷移
  window.open("https://twitter.com/share?text=" + title + text  + "&hashtags=" + hashtags + "&url=" + url);
}
