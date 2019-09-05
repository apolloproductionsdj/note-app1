var readlineSync = require('readline-sync')

var degrees = readlineSync.question('Enter degress in Fahrenheit: ')
var degreesNum = Number(degrees);
var fahrenheit = (degreesNum - 32) / 1.8;

console.log('It is ' + fahrenheit + ' degrees celcius');