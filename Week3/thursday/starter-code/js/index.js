$(document).ready(function() {

  var newFacts = [
  	"Big Ben is the name of the bell - the building is called Elizabeth Tower",
  	"France was still executing people by guillotine when the first Star Wars movie came out.",
  	"What is called a “French kiss” in the English speaking world is known as an “English kiss” in France.",
  	"At any one time, about 0.7% of the world’s population is drunk."
  ];

  // add an item to the beginning of the list
  $('#facts').prepend('<li>A completely new fact that I just came up with.</li>');

  // add facts from 'newFacts' to the end of the list;
  // for (var i = 0; i < newFacts.length; i++) {
  //   $('#facts').append('<li>' + newFacts[i] + '</li>');
  // }

  $(newFacts).each(function(){
    $('#facts').append('<li>' + this + '</li>');
  })

  // Give each evenly numbered fact in the list a class of even and each oddly numbered one a class of odd and see what changes.
  // $('li').each(function(index){
  //   if (index%2 == 0) {
  //     $(this).addClass('odd');
  //   } else {
  //     $(this).addClass('even');
  //   }
  // })

  $('li:nth-child(even)').addClass('even');
  $('li:nth-child(odd)').addClass('odd');

  // Add an event listener so that when you hover your cursor over a fact, it has a class of selected and then removes it when you move the cursor off.
  // $('li').each(function(){
  //   $(this).hover(function() {
  //     $(this).mouseenter(function() {
  //       $(this).addClass('selected');
  //     });
  //     $(this).mouseleave(function() {
  //       $(this).removeClass('selected');
  //     });
  //   });
  // });

  // $('li').each(function(){
  //   $(this).hover(function() {
  //       $(this).toggleClass('selected');
  //   });
  // });

  $('li').hover(function() {
    $(this).toggleClass('selected');
  });

});
