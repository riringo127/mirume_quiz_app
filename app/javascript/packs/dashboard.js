$(function(){
    var countElm = $('#total_count'),
    countSpeed = 50;
 
    countElm.each(function(){
        var self = $(this),
        countMax = self.attr('data-num'),
        thisCount = self.text(),
        countTimer;
 
        function timer(){
            countTimer = setInterval(function(){
                var countNext = thisCount++;
                self.text(countNext);
 
                if(countNext == countMax){
                    clearInterval(countTimer);
                }
            },countSpeed);
        }
        timer();
    });
 
});

// ツイートボタン押下時にテキストを動的に変更してツイート
document.getElementById("twitter-share-button").onclick = function() {
    // 出力結果を取得
    let title = "【パーソナルカラーで色を選びたいあなたに。クイズで色を見る目を鍛えるアプリmirume】"
    let text = document.getElementById("tweet-text").innerText;
  
    // オプションパラメータを設定
    let hashtags = ["パーソナルカラー", "色識別クイズアプリmirume"];
    let url = encodeURIComponent(location.href)  // location.hrefは今いるURL
  
    // URLを生成して遷移
    window.open("https://twitter.com/share?text=" + text + title + "&hashtags=" + hashtags + "&url=" + url);
  }