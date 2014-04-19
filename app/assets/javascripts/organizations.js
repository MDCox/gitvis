$( document ).ready(function(){
  $("#in-org").slideToggle(800, function(){
    $("#form-class").fadeIn(400);
  });
});

$().click(function(){
  $(".in-org-right").append('<li><a href="#">Right</a></li>');
});
