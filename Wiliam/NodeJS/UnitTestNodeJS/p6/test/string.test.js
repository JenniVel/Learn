test('string', () => {
  const name = 'Jennifer Velensia Santoti';

  expect(name).toBe('Jennifer Velensia Santoti');
  expect(name).toEqual('Jennifer Velensia Santoti');
  expect(name).toMatch(/Velen/);
})