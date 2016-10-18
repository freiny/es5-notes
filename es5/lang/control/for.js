'use strict';

for (var i=0; i<3; i++) {
	console.log('abc');
}
// OUTPUT:
// abc
// abc
// abc

var n = 0;
for (;n<5;){
	console.log(n);
	n += 2;
}
// OUTPUT:
// 0
// 2
// 4

n = 2;
for(;;){
	if (n === 0) break;
	console.log(n--);
}
// OUTPUT:
// 2
// 1
