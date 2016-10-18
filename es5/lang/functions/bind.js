'use strict';

var obj = {};
obj.name = "MyObj";
obj.printName = function(){
	console.log(this.name);
};

var o = {};
o.name = 'MyO';

this.name = 'Angela';

function fn(cb) {
	cb();
}

fn(obj.printName.bind(obj));
// OUTPUT: MyObj
fn(obj.printName.bind(o));
// OUTPUT: MyO
fn(obj.printName.bind(this));
// OUTPUT: Angela

var log = console.log.bind(console.log);
log('hi');
// OUTPUT: hi

log = console.log.bind(console.log, 'aaa', 'bbb');
log('hi');
// OUTPUT: aaa bbb hi
