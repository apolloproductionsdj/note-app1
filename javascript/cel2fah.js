var readlineSync = require('readline-sync')

var degrees = readlineSync.question('Enter degrees in Celsius: ');
var degreesNum = parseInt(degrees,text);
var degreesFahrenheit = degreesNum * 1.8 + 32;
console.log('It is ' + degreesFahrenheit + ' degrees Fahrenheit');