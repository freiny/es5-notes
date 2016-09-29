'use strict';

hw();
// OUTPUT: helloworld

console.log(m());
// OUTPUT: Message

greet('Jan');
// OUTPUT: Hello Jan

var s = m();
greet(s);
// OUTPUT: Hello Message

// ****************************************************************
function hw() {
	console.log("helloworld");
}

// ****************************************************************
function m() {
	return 'Message';
}

// ****************************************************************
function greet(msg) {
	console.log("Hello", msg);
}

// ****************************************************************
