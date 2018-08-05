// Your code here
var squares = document.getElementsByClassName("square");

function randomNumberGenerator() {
  return Math.floor((Math.random() * 6) + 1);
}

var configurations = {
  1: [0,0,0,0,1,0,0,0,0],
  2: [1,0,0,0,0,0,0,0,1],
  3: [0,0,1,0,1,0,1,0,0],
  4: [1,0,1,0,0,0,1,0,1],
  5: [1,0,1,0,1,0,1,0,1],
  6: [1,0,1,1,0,1,1,0,1]}


// var config = configurations[randomNumberGenerator()];
// var squares = document.getElementsByClassName("square");
//
// for (var i = 0; i < squares.length; i++) {
//   if (config[i] == 1) {
//     squares[i].innerHTML = '<div class="dot"></div>';
//   }
// }

function clearDice() {
  for (var i = 0; i < squares.length; i++) {
   squares[i].innerHTML = '';
  }
}

function roll() {
  clearDice();
  var config = configurations[randomNumberGenerator()];

  for (var i = 0; i < squares.length; i++) {
    if (config[i] == 1) {
      squares[i].innerHTML = '<div class="dot"></div>';
    }
  }
}

document.addEventListener("DOMContentLoaded", function(){

  var button = document.getElementById("myButton");
  button.addEventListener("click", buttonClicked);
  console.log(button.value);

  var myInterval;
  function buttonClicked() {
    var text = this.innerHTML;
    if (text == "Feelin' lucky?") {
      this.innerHTML = "Stop Rollin'";
      myInterval = setInterval(roll, 300);
    } else {
      this.innerHTML = "Feelin' lucky?";
      clearInterval(myInterval);
    }

  }

})
