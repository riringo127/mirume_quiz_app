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