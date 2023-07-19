import {sayHello} from '../src/sayHello';

test('sayHello success', () => {
  expect(sayHello('Velen')).toBe('Hello Velen');
})

test.failing('sayHello error', ()=>{
  sayHello(null);
})