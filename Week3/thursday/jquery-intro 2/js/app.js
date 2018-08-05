$(document).ready(function(){

  console.log('dom is ready');
  markAsDone();
  setCount();

  // change html of count span
  function setCount(){
    var count = $(".todo").length;
    $("#count").html(count);
  }

  // add class done to all the elements on button click
  // $("#button1").click(function(){
  //   $($("li")[0]).addClass('done');
  // })

  function markAsDone(){
    $(".markdone").click(function() {
      $($(this).parent()).addClass('done');
      $($(this).parent()).removeClass('todo');
      setCount();
    });
  };


  // create a new element and add it to the list on button click
  $("#newitem").click(function() {
    $("#list").append("<li class='todo'>New Item<button type='button' name='button' class='markdone'>Mark as Done</button></li>")
    markAsDone();
    setCount();
  });

  $("#removeitem").click(function() {
    $("li").last().remove();
    setCount();
  });

});
