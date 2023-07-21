test('string.not', ()=>{
  const name = 'Jennifer Velensia Santoti';

  expect(name).not.toBe('Wiliam');
  expect(name).not.toEqual('Wiliam');
  expect(name).not.toMatch(/Wiliam/);
});

test('number.not', ()=>{
  const value = 2 + 2;
  expect(value).not.toBeGreaterThan(6);
  expect(value).not.toBeLessThan(2);
  expect(value).not.toBe(10);
})