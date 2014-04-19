$( document ).ready(function(){
  $("#in-org").fadeIn(300, function(){
    $("#form-class").fadeIn(300);
  });
});

$().click(function(){
  $(".in-org-right").append('<li><a href="#">Right</a></li>');
});
