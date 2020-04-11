$(function(){
  $('.contents__post li').hover(function(){
      $("ul:not(:animated)", this).slideDown();
  }, function(){
      $("ul.drop",this).slideUp();
  });
});