'use strict';

var Animal = function(type) {
	this.type = typeof type === 'undefined' ? 'unknown' : type;
};
Animal.prototype.speak = function(){
	console.log('Snarl');
};

console.log(Animal.prototype);
// OUTPUT: {}

var Cat = new Animal('cat');
console.log(Cat);
// OUTPUT: { type: 'cat' }
console.log(Cat.prototype);
