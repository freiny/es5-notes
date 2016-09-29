'use strict';

var sayHi = function(name){
	console.log('Hi', name);
}

var sayBye = function(name){
	console.log('Bye', name);
}

speak(sayHi, 'Pam');
// OUTPUT: Hi Pam
speak(sayBye, 'Dwight');
// OUTPUT: Bye Dwight

// ****************************************************************
function speak(callback, message){
	callback(message);
}

// ****************************************************************
