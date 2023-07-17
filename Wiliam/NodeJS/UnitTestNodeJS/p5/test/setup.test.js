import { sum } from '../src/sum';

// beforeEach(()=>{
//   console.info('Before Each');
// })

// afterEach(()=>{
//   console.info('After Each');
// });
beforeAll(() => {
  console.info('Before Each');
});

afterAll(() => {
  console.info('After Each');
});

test('first test', () => {
  expect(sum(10, 10)).toBe(20);
});

test('second test', () => {
  expect(sum(10, 10)).toBe(20);
});

test('third test', () => {
  expect(sum(10, 10)).toBe(20);
});
