$(function() {
  $(".search-input").on("keyup", function() {
    let input = $(".search-input").val();
    $.ajax({
      type: 'GET',  // HTTPメソッド
      url: '/cards/search',
      data: { keyword: input },
      dataType: 'json' // サーバから値を返すのはjson
    })
    .done(function(cards) {
      $(".contents").empty();  //投稿の子要素を削除
      if (cards.length !== 0) {
        cards.forEach(function(card){
          appendCard(card);
        });
      }
      else {
        appendErrMsgToHTML("一致する本はありません");
      }
    })
  });
});