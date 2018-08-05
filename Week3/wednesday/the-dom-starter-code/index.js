var listItems = ["Go out","Come back" , "Buy food" , "Eat food"];


function addListItem(value) {
  var liTag = document.createElement("li");
  liTag.innerHTML = value;
  // liTag.className = "newListItem";
  document.getElementById("list").appendChild(liTag);
}

var wrapperDiv = document.getElementById("wrapper");
wrapperDiv.style.backgroundColor = "red";


// var listElements = document.getElementsByTagName("li");
// listElements[0].innerHTML = "I have changed!";

// query selector
// var selected = document.querySelectorAll(".selected");
// var selected = document.getElementsByClassName("selected");

// for (var i = 0; i < selected.length; i++) {
//   selected[i].style.color = "green";
// }

var ptag = document.createElement("p");
ptag.innerHTML = "A brand new ptag";
ptag.style.fontSize = "30px";
document.body.appendChild(ptag);



// write append loop here
for (var item in listItems) {
  addListItem(listItems[item]);
}

// write the class loop here
var listElements = document.getElementsByTagName("li");
for (var i = 1; i < listElements.length; i += 2) {
  listElements[i].className = "even";
}

document.getElementById("count").innerHTML = listElements.length;
