'use strict';

var i = 10;
var f = 4.3;
console.log(i + f);
// OUTPUT: 14.3

var obj = {'key': 'value'};
console.log(obj.key);
// OUTPUT: value value

var obj2 = {"a": 1, "b": 2, "c": 4.7};
console.log(obj2.a, obj2["c"]);
// OUTPUT: 1 4.7

var arr = [1, 2, 3, 'a', 'bc', "abc"];
console.log(arr[0], arr[4], arr[5]);
// OUTPUT: 1 'bc' 'abc'
console.log(arr.length);
// OUTPUT: 6

fn = function(){
	console.log("hello world");
};
fn();
// OUTPUT: hello world
