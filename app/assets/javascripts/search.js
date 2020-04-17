$(function() {

  var search_list = $(".contents");

  function appendMemo(memo) {

    var html = `<a class="contents__post" href="memo_path(memo.id)">${memo.title}</a>`
    
    search_list.append(html);
   }

  function appendErrMsgToHTML(msg) {
    var html = `<div class='name'>${ msg }</div>`
    search_list.append(html);
  }

  $(".fa").on("keyup", function() {
    var input = $(".fa").val();
    $.ajax({
      type: 'GET',
      url: '/memos/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(memos) {
      search_list.empty();
      if (memos.length !== 0) {
        memos.forEach(function(memo){
          appendMemo(memo);
        });
      }
      else {
        appendErrMsgToHTML("一致するツイートがありません");
      }
    })
    .fail(function() {
      alert('error');
    });
  });
});