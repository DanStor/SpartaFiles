// Number
var a = 5;
console.log("a: " + a);

a = 10;
console.log("a: " + a);

// String
var string1 = "Hooray";
var string2 = "Coding sorcery";
var string3 = "Don't use single quotes because they suck";

console.log(string1);
console.log(string2);
console.log(string3);

var type = typeof string1;
console.log(type);

var array = ["banana", "orange", "apple", "pear", "kiwi"];

console.log(array[2]);

array.push("grape");
console.log(array);

array.pop();
console.log(array);

var sliceArray = array.slice(1,2);
console.log(array);
console.log(sliceArray);

array.splice(2,0,"cherry"); // Adds cherry at position 2, removes nothing
console.log(array);

array.splice(2,2) // Removes 2 items after position 2
console.log(array);

var person = {
  name: "Rob",
  age: 28,
  address: "Brum",
  house_number: 4
}

console.log(person.name);
