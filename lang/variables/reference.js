'use strict';

var arr = [1, 2, 3];
var a = arr;
a[0] = 10;
console.log(a, arr);
// OUTPUT: [ 10, 2, 3 ] [ 10, 2, 3 ]

var obj = {'a': 1, 'b': 2, 'c': 3};
var o = obj;
o.a = 12;
console.log(o, obj);
// OUTPUT: { a: 12, b: 2, c: 3 } { a: 12, b: 2, c: 3 }
