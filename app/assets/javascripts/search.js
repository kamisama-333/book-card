$(function() {
  $(".search-input").on("keyup", function() {
    let input = $(".search-input").val();
    $.ajax({
      type: 'GET',
      url: '/cards/search',
      data: { keyword: input },
      dataType: 'json'
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