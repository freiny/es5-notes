'use strict';

var Dog = function(name) {
	this.name = ( typeof name === 'undefined' ) ? 'no-name' : name;
};

Dog.prototype.speak = function() {
	console.log(this.name + ':', 'RUFF');
};

var d = new Dog('fido');
d.speak();
// OUTPUT: fido: RUFF

var DogCat = function(name) {
	Dog.call(this, name);
};

DogCat.prototype.speak = function() {
	Dog.prototype.speak.call(this);
	console.log(this.name + ':', 'MEOW');
};

var dc = new DogCat('fidofifi');
dc.speak();
// OUTPUT: fidofifi: RUFF
// OUTPUT: fidofifi: MEOW
