import { sum, sumAll } from "../src/sum";
// const sum = require('../src/sum');

test("pernjumlahan 1", ()=>{
  const result = sum(1, 2);

  expect(result).toBe(3);
});

test("pernjumlahan 2", ()=>{
  const result = sum(1, 2);

  expect(result).toBe(3);
});

test("pernjumlahan 3", ()=>{
  const result = sum(1, 2);

  expect(result).toBe(3);
});

test('test sum all', ()=>{
  const numbers = [1, 1, 1, 1, 1];
  expect(sumAll(numbers)).toBe(5);
})