// var button = document.getElementsByClassName('button');
//
// button[0].addEventListener('click', function(){
//   //
// })
//
// document.addEventListener('DOMContentLoaded', function(event){
//   console.log('DOM is Ready');
// });

// $(document).ready(function(){
$(function (event) {
  console.log('DOM is Ready, isn\'t JQuery simple!');

  // $(".button").click(function(event){
  //   console.log('Thanks for clicking me!!');
  // })

  // change html of count span
  function setCount() {
    var count = $('li').length - $('.done').length;
    $('#counter').html(count);
  }

  // add class done to all the elements on button clicking
  function markDone() {
    $('.markDone').click(function(){
      $($(this).parent('li')).addClass('done');
      setCount();
    });
    setCount();
  }

  markDone();

  // create an element and add it to the list on button click
  $('#newItem').click(function(){
    $('#todoList').append('<li>A New Item <button type="button" name="button" class="markDone">Mark as Done</button></li>');
    markDone();
  });

  // delete  the last element from the list
  $('#removeItem').click(function(){
    $('li').last().remove();
    setCount();
  });


})
