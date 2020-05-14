$(function () {
  // クリック時の動作
  $('.hamberger_line').on('click', function() {
    // メニューを閉じる
    if($(this).hasClass('open')) {
        $(this).removeClass('open');
        $('.hamberger_list').removeClass('open');
        $('.overlay').removeClass('open');
        // メニューを開く
    } else {
        $(this).addClass('open');
        $('.hamberger_list').addClass('open');
        $('.overlay').addClass('open');
    }
  });
  $('.overlay').on('click',function(){
    if($(this).hasClass('open')){
        $(this).removeClass('open');
        $('.hamberger_line').removeClass('open');
        $('.hamberger_list').removeClass('open');
      
    }
  });
});

