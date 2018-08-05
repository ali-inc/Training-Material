function c(n) {
  var sum = 0;
  for (var i = 1; i <= n ; i++) {
    sum += Math.pow(i, 3);
  }
  return sum;
}

console.log("c(1): " + c(1));
console.log("c(2): " + c(2));
console.log("c(4): " + c(4));
console.log("c(5): " + c(5));
console.log("c(10): " + c(10));
console.log("c(50): " + c(50));
console.log("--------");

function s(n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += (Math.pow(n+1-i,3)*Math.pow(i+1,3));
  }
  return sum;
}

console.log("s(1): " + s(1));
console.log("s(2): " + s(2));
console.log("s(4): " + s(4));
console.log("s(5): " + s(5));
console.log("s(10): " + s(10));
console.log("--------");
console.log("s(5000): " + s(5000));
var result = s(5000) % Math.pow(10,9);
console.log(result);
