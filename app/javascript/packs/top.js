function BlurTextAnimeControl() {
    $('.blurTrigger').each(function(){ //blurTriggerというクラス名が
      var elemPos = $(this).offset().top-50;//要素より、50px上の
      var scroll = $(window).scrollTop();
      var windowHeight = $(window).height();
      if (scroll >= elemPos - windowHeight){
      $(this).addClass('blur');// 画面内に入ったらblurというクラス名を追記
      }else{
      $(this).removeClass('blur');// 画面外に出たらblurというクラス名を外す
      }
      });
  }
  
  // 画面が読み込まれたらすぐに動かしたい場合の記述
  $(window).on('load', function () {
    BlurTextAnimeControl();/* アニメーション用の関数を呼ぶ*/
  });// ここまで画面が読み込まれたらすぐに動かしたい場合の記述
  