import {sumAll} from "../src/sum";

// test('sumAll(10, 10, 10)', () => { 
//   expect(sumAll([10, 10, 10])).toBe(30);
//  })

// test('sumAll(10, 10, 10, 10, 10)', () => { 
//   expect(sumAll([10, 10, 10, 10, 10])).toBe(50);
//  })

// const table = [
//   [[10, 10, 10], 30],
//   [[10, 10, 10, 10, 10], 50],
//   [[10, 10, 10, 10, 10, 10, 10], 70],
// ];

// test.each(table)("test sumAll(%s) should result %i", (numbers, expected)=>{
//   expect(sumAll(numbers)).toBe(expected);
// })

const table = [
  {numbers: [10, 10, 10], expected: 30},
  {numbers: [10, 10, 10, 10, 10], expected: 50},
  {numbers: [10, 10, 10, 10, 10, 10, 10], expected: 70},
]

test.each(table)("test sumAll($numbers) should result $expected", ({numbers, expected})=>{
  expect(sumAll(numbers)).toBe(expected);
})