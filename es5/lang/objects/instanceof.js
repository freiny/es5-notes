'use strict';

console.log([] instanceof Array);
// OUTPUT: true
console.log([] instanceof Object);
// OUTPUT: true

console.log({} instanceof Array);
// OUTPUT: false
console.log({} instanceof Object);
// OUTPUT: true

console.log(function(){} instanceof Function);
// OUTPUT: true
console.log(function(){} instanceof Object);
// OUTPUT: true

var DogCat = function() {};
var dc = new DogCat();

console.log(dc instanceof Function);
// OUTPUT: false
console.log(dc instanceof Object);
// OUTPUT: true
console.log(dc instanceof DogCat);
// OUTPUT: true
