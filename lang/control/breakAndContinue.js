'use strict';

for (var i=0; i<5; i++) {
	if ( (i % 2) === 1) continue;
	console.log(i);
}
// OUTPUT:
// 0
// 2
// 4

var str = '1-2+34-56+7';
var s = '';
for (var i=0; i<str.length; i++) {
	if (str[i] === '+' || str[i] === '-') continue;
	s += str[i];
}
console.log(s);
// OUTPUT: 1234567

s = '';
for (var i=0; i<str.length; i++) {
	if (str[i] === '+') break;
	s += str[i];
}
console.log(s);
// OUTPUT: 1-2
