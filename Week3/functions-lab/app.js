// 1. Write a function called 'multiply' that multiplies two numbers and returns the result
function multiply(x,y) {
  return x * y;
}

// 2. Write a function called 'addThree' that adds three numbers together and returns the result
function addThree(x,y,z) {
  return x + y + z;
}

// 3. Write a function called 'smallestNumber' that returns the smaller of 2 numbers
function smallestNumber (x,y) {
  if(x > y) {
    return y;
  }
  else if(x === y) {
    return 0;
  }
  else {
    return x;
  }
}

// 4. Write a function called 'maxOfThree' that returns the largest of 3 numbers
function maxOfThree(x,y,z) {
  return Math.max(x,y,z);
}

// 5. Write a function called 'reverseString' that returns the reverse a string
function reverseString(str) {
  return str.split("").reverse().join("");
}

// 6. Write a function called 'disemvowel' that returns a string with the vowels stripped out
function disemvowel(str) {
  var vowels = ["a","e","i","o","u"];
  for(var i = 0; i < 6; i++) {
    str = str.replace(vowels[i],"");
  }
  return str;
}

// 7. Write a function called 'removeOdd' that removes all ODD number from an array
function removeOdd(arr) {

  var arrLen = arr.length;
  var arrNew = [];

  for(var i = 0; i < arrLen ; i++) {
    if(arr[i] % 2 !== 0) {
      continue;
    }
    else {
      arrNew.push(arr[i]);
    }
  }
  return arrNew;
}

// 8. Write a function called 'removeEven' that removes all EVEN number from an array
function removeEven(arr) {

  var arrLen = arr.length;
  var arrNew = [];

  for(var i = 0; i < arrLen ; i++) {
    if(arr[i] % 2 === 0) {
      continue;
    }
    else {
      arrNew.push(arr[i]);
    }
  }
  return arrNew;
}

// 9. Write a function called 'longestString' that takes an array of strings and returns the string with the longest character length
function longestString(arr) {
  var longestStr = 0;
  var strLen = 0;

  for(var i = 0; i < arr.length; i++) {
    var str = arr[i];

    if(str.length > strLen) {
      strLen = str.length;
      longestStr = i;
    }
  }
  return arr[longestStr];
}

// 10. Write a function called 'allElementsExceptFirstThree' that discards the first 3 elements of an array,
// e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
function allElementsExceptFirstThree(arr) {
  return arr.splice(3,arr.length);
  // arr.splice(0,3)
  // return arr;
}

//#### BONUS ####

// 11. Write a function called 'convertArrayToAnObject' that turns an array (with an even number of elements) into a hash, by
// pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
// {'a' => 'b', 'c' => 'd'}
function convertArrayToAnObject(arr) {
  var element = {};
  for(var i = 0; i < arr.length; i+=2) {
    element[arr[i]] = arr[i+1];
  }
  return element;
}

// 12. Write a function called 'fizzBuzz' that takes any number and returns a value based on these rules

// But for multiples of three print "Fizz" instead of the number
// For the multiples of five print "Buzz".
// For numbers which are multiples of both three and five print "FizzBuzz".
function fizzBuzz(x) {
  var i = parseInt(x);
  var result = "";
  if(isNaN(i)) {
    return 1;
  }

  if (x % 3 === 0) {
    result += "Fizz";
  }
  if (x % 5 === 0) {
    result += "Buzz";
  }

  return result;
}

var name = prompt("What is your name?") || "Default Name";
console.log(name)
