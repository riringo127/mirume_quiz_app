$(function(){
    $(window).scroll(function(e){
        var classCount = $(".correct_answer_judgement").length; /* .correct_answer_judgementというクラスの数を取得 */
        $("p#count").text(classCount); /* p#countにクラスの数を表示 */
    });
});