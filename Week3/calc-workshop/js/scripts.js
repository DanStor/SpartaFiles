

/*
  Basic Functions
  addition
  subtraction
  multiplication
  division
*/
var funcChoice = prompt('Do you want (a)ddition, (s)ubtraction, (m)ultiplication, (d)ivision, (p)ower?');

while (funcChoice !== "a" && funcChoice !== "s" && funcChoice !== "m" && funcChoice !== "d" && funcChoice !== "p") {
  funcChoice = prompt('Invalid selection. Please choose: (a)ddition, (s)ubtraction, (m)ultiplication, (d)ivision, (p)ower.');
}

prompt(mathmetise(funcChoice));

function mathmetise(c) {
  var num1 = parseInt(prompt('Input value one.'));
  while (isNaN(num1)) {
    num1 = parseInt(prompt('Not a number. Please input an integer only.'));
  }

  var num2 = parseInt(prompt('Input value two.'));
  while (isNaN(num2)) {
    num2 = parseInt(prompt('Not a number. Please input an integer only.'));
  }

  var ans = 0;
  switch (c) {
    case "a":
      ans = num1 + num2;
      break;
    case "s":
      ans = num1 - num2;
      break;
    case "m":
      ans = num1 * num2;
      break;
    case "d":
      ans = num1 / num2;
      break;
    case "p":
      ans = math.pow(num1, num2);
      break;
    default:
      throw 'problemException';
  }

  return ans;
}


/*
  Advanced Functions
  power a ^ b
  root
*/
