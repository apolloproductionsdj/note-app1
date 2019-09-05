var readlineSync = require('readline-sync');

var ordinal = function(digit) {
  var digitNum = Number(digit);
  var lastDigit = digitNum % 10;
  var lastTwodigits = digitNum % 100;
  if (lastTwodigits === 11 || lastTwodigits === 12 || lastTwodigits === 13) {
    return digit + "th";
  }
  else if (lastDigit === 1) {
  return digit + "st";
}
  else if (lastDigit === 2) {
    return digit + "nd";
  }
  else if (lastDigit === 3) {
    return digit + "rd";
  }
  else {
    return digit + "th";
  }

}

var input = readlineSync.question("Enter a digit: ");
 
var value = ordinal(input);
console.log(value);