// write code here

document.addEventListener("DOMContentLoaded", function(){
  console.log("DOM Content has loaded");

  var myButton = document.getElementById("myButton");
  myButton.addEventListener("click", handleClick);

  function handleClick() {
    console.log(this.innerHTML);
  }

  var myForm = document.getElementById("myForm");
  myForm.addEventListener("submit", function(event){
    event.preventDefault();
    console.log("it's been submitted");
    // myForm.submit();
  })

  var buttons = document.getElementsByClassName("myButtons");

  for (var i = 0; i < buttons.length; i++) {
    buttons[i].addEventListener("click", function(){
      console.log(this.value + " was clicked");
    })
  }

  var div1 = document.getElementById("div1");
  var div2 = document.getElementById("div2");
  var div3 = document.getElementById("div3");

  div1.addEventListener("click", function(event){
    console.log("div1 has been clicked");
    event.stopPropagation();
  },)// true)

  div2.addEventListener("click", function(event){
    console.log("div2 has been clicked");
    event.stopPropagation();
  })
  div3.addEventListener("click", function(event){
    console.log("div3 has been clicked");
    event.stopPropagation();
  })
});
