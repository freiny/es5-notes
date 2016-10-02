'use strict';

function a() {
	console.log(x);
}
// a();
// OUTPUT: ReferenceError: x is not defined ...

function b() {
	var x;
	console.log(x);
}
b();
// OUTPUT: undefined

function c() {
	console.log(x);
	var x;
}
c();
// OUTPUT: undefined

function d() {
	var x = 0;
	console.log(x);
}
d();
// OUTPUT: 0

function e() {
	console.log(x);
	var x = 0;
}
e();
// OUTPUT: undefined
