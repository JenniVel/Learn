beforeAll(() => console.info('Before All 1'));
afterAll(() => console.info('After All 1'));
// beforeEach(() => console.info('Before Each 1'));
// afterEach(() => console.info('After Each 1'));
// test('test outer 1', () => console.info('Test Outer 1'));
// test('test outer 2', () => console.info('Test Outer 2'));

describe('inner scope', () => {
  beforeAll(() => console.info('inner Before All 1'));
  afterAll(() => console.info('inner After All 1'));
  describe('inner inner scoper', ()=>{
  beforeEach(() => console.info('inner inner Before Each 1'));
  afterEach(() => console.info('inner inner After Each 1'));
  test('test outer 1', () => console.info('inner inner Test Outer 1'));
  test('test outer 2', () => console.info('inner inner Test Outer 2'));
  });
});
