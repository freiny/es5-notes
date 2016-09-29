'use strict';

var arr = [1,2,3];
console.log(typeof arr, arr.length);
// OUTPUT: object 3

arr.push(10);
console.log(arr);
// OUTPUT: [ 1, 2, 3, 10 ]
arr.pop();
arr.pop();
console.log(arr);
// OUTPUT: [ 1, 2 ]

arr.shift();
console.log(arr);
// OUTPUT: [ 2 ]

var a = [];
a[1] = 'a';
a[4] = 'b';
console.log(a, a.length);
// OUTPUT: [ , 'a', , , 'b' ] 5

for(i=0; i<a.length; i++){
	console.log(a[i]);
}
// OUTPUT:
// undefined
// a
// undefined
// undefined
// b
