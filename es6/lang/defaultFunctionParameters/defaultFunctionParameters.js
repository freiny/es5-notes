'use strict';
function f(name1, name2 = 'bob'){
  console.log('Hi ' + name1 + ' and ' + name2);
}

f();
// OUPTUT: Hi undefined and bob
f('ann');
// OUPTUT: Hi ann and bob
f('ann', undefined);
// OUPTUT: Hi ann and bob
f('ann', 'cat');
// OUPTUT: Hi ann and cat


var names = ['bob', 'cat'];
function g(name1, name2 = names){
  console.log('Hi ' + name1 + ' and ' + name2);
}
g('ann');
// OUTPUT: Hi ann and bob,cat

function h(name1, name2 = names){
  names = ['dan', 'eli'];
  console.log('Hi ' + name1 + ' and ' + name2);
}
g('ann');
// OUTPUT: Hi ann and bob,cat
