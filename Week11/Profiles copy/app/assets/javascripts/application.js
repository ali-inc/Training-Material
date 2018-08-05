// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery-ui/widget
//= require jquery-ui/sortable
//= require activestorage
//= require turbolinks
//= require tinymce-jquery
//= require_tree .
//= require bootstrap
//= require data-confirm-modal

document.addEventListener("turbolinks:load", function() {

  // $("text_area").keypress(function(){
  //     $(this).next(".leftchar").html((descriptionLength - this.value.length));
  //     console.log(this.value.length);
  // });

  $('textarea').keypress(function(){
    console.log(this.maxLength);
    var remainingChar = this.maxLength - this.value.length
    $(this).next().html(("Remaining Chars: "+ remainingChar));
  });
  $( ":text" ).keypress(function(){
    console.log("this text field has:")
    console.log(this.maxLength);
    var remainingChar = this.maxLength - this.value.length
    $(this).next().html(("Remaining Chars: "+ remainingChar));
  });

  $("#copylink").click(function(){
    console.log("copying");
    var $temp = $("<input>");
    $("body").append($temp);
    $temp.val($("#tokenlink").text()).select();
    document.execCommand("copy");
    $temp.remove();
    document.getElementById("copied").innerHTML = "Link Copied";
  });

});
