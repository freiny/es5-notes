'use strict';

var a = 1;
var b = 2;
console.log(a, b);
// OUTPUT: 1 2

function fn() {
	var b = 20;
	console.log(a, b);
}
fn();
// OUTPUT: 1 20

console.log(a, b);
// OUTPUT: 1 2
