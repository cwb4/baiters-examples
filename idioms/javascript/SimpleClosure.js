#! /usr/bin/env node
"use strict";

/**
 * Create closure with default capture
 * @param value - Value of context
 */
function CreateClosure(context) {
  function Method() {
    return context;
  }
  return Method;
}

// Creating closure with a unmutable object (a string)
// This behaves as if context is captured by copy or value
const unmutable = 'A'
const closureA = CreateClosure(unmutable);
console.log('context in closureA: ' + closureA());

// Creating closure with a mutable object (a list)
// This behaves as if context is captured by reference
const mutable = ['B'];
const closureB = CreateClosure(mutable);
console.log('context in closureB: ' + closureB());

// It is possible to change of the value of the context
mutable[0] = 'C';
console.log('context in closureB: ' + closureB());
