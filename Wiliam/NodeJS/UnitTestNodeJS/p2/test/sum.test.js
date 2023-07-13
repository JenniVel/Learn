import { sum } from "../src/sum";
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

  expect(result).toBe(2);
});