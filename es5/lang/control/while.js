'use strict';

var s = '';
while(s.length < 4){
	s += 'o';
}
console.log(s);
// OUTPUT: oooo

var isRunning = true;
while(isRunning){
	console.log("Is Running");
	isRunning = false;
}
// OUTPUT: Is Running

var n=3;
while(n--){
	console.log(n);
}
// OUTPUT:
// 2
// 1
// 0
