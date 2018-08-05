// 1. Write a function called 'multiply' that multiplies two numbers and returns the result
function multiply (num1, num2) {
  return num1 * num2;
}

// 2. Write a function called 'addThree' that adds three numbers together and returns the result
function addThree(num1, num2, num3) {
  return num1 + num2 + num3;
}

// 3. Write a function called 'smallestNumber' that returns the smaller of 2 numbers
function smallestNumber(num1, num2) {
  if (num1 < num2) {
    return num1;
  } else {
    return num2;
  }
}

// 4. Write a function called 'maxOfThree' that returns the largest of 3 numbers
function maxOfThree(num1, num2, num3) {
  var max = num1;
  if (num2 > max) {
    max = num2;
  }
  if (num3 > max) {
    max = num3;
  }
  return max;
  //return Math.max(num1,num2,num3);
}

// 5. Write a function called 'reverseString' that returns the reverse a string
function reverseString(str) {
  var splitStr = str.split("");
  var reverseArr = splitStr.reverse();
  var joinArr = reverseArr.join("");
  return joinArr;
}

// 6. Write a function called 'disemvowel' that returns the vowels from the string parameter
function disemvowel(str) {
  var vowels = ['a','e','i','o','u'];
  var result = [];
  var input = str.toLowerCase();
  for (var i = 0; i < input.length; i++) {
    if (!vowels.includes(input[i])) {
      result.push(input[i]);
    }
  }
  return result.join("");
  // return str.replace(/[aeiou]/gi, '');
}

// 7. Write a function called 'removeOdd' that removes all ODD number from an array
function removeOdd(arr) {
  var result = [];
  for (var i = 0; i < arr.length; i++) {
    if(arr[i]%2 === 0) {
      result.push(arr[i]);
    }
  }
  return result;
}

// 8. Write a function called 'removeEven' that removes all EVEN number from an array
function removeEven(arr) {
  var result = [];
  for (var i = 0; i < arr.length; i++) {
    if(arr[i]%2 === 1) {
      result.push(arr[i]);
    }
  }
  return result;
}

// 9. Write a function called 'longestString' that takes an array of strings and returns the string with the longest character length
function longestString(arr) {
  var result = '';
  for (var i = 0; i < arr.length; i++) {
   if (arr[i].length > result.length) {
     result = arr[i];
   }
  }
  return result;
}

// 10. Write a function called 'allElementsExceptFirstThree' that discards the first 3 elements of an array,
// e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
function allElementsExceptFirstThree(arr) {
  for (var i = 0; i < 3; i++) {
    arr.shift();
  }
  return arr;
  //return arr.splice(3,arr.length);
}


//#### BONUS ####

// 11. Write a function called 'convertArrayToAnObject' that turns an array (with an even number of elements) into a hash, by
// pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
// {'a' => 'b', 'c' => 'd'}
function convertArrayToAnObject(arr) {
  var obj = {};
  for (var i = 0; i < arr.length; i += 2) {
    obj[arr[i]] = arr[i+1];
  }
  return obj;
}


// 12. Write a function called 'fizzBuzz' that takes any number and returns a value based on these rules

// But for multiples of three print "Fizz" instead of the number
// For the multiples of five print "Buzz".
// For numbers which are multiples of both three and five print "FizzBuzz".
function fizzBuzz(num) {
  if (num%15 == 0) {
    return "FizzBuzz";
  } else if (num%3 == 0) {
    return "Buzz";
  } else if (num%5 == 0) {
    return "Fizz";
  } else {
    return num;
  }
}
