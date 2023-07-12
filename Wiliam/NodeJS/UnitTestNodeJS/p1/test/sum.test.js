import { sum } from "../src/sum";
// const sum = require('../src/sum');

test("pernjumlahan", ()=>{
  const result = sum(1, 2);

  expect(result).toBe(3);
});