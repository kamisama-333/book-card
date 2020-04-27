$(function() {

  let search_list = $(".wrapper");

  function appendCard(card) {
  
    let html =  `<div class="content">
                  <div class="content__left">
                    <div class="content__left--id">
                      ${card.user_id}
                    </div>
                  </div>
                  <div class="content__right">
                    <div class="content__right__box">
                      <div class="content__right__box__top">
                        <a id="content__right__top__titles" href="/cards/${card.id}"}>
                          ${card.title}
                        </a>
                      </div>
                      <div class="content__right__box__bottom">
                        ${card.author}
                      </div>
                    </div>
                    <div class="content__right__nicknames">
                      <a class="content__right__nicknames__links" href="/users/${card.user_id}">
                        ${card.nickname}
                      </a>
                    </div>
                  </div>
                </div>`
    search_list.append(html);
  }

  function appendErrMsgToHTML(msg) {
    var html = `<div class='name'>${ msg }</div>`
    search_list.append(html);
  }
  $(".search-input").on("keyup", function() {
    let input = $(".search-input").val();
    $.ajax({
      type: 'GET',  // HTTPメソッド
      url: '/cards/search',
      data: { keyword: input },
      dataType: 'json' // サーバから値を返すのはjson
    })
    .done(function(cards) {
      search_list.empty();  //投稿の子要素を削除
      if (cards.length !== 0) {
        cards.forEach(function(card){
          appendCard(card);
        });
      }
      else {
        appendErrMsgToHTML("一致する本はありません");
      }
    })
    .fail(function() {
      alert('error');
    });
  });
});