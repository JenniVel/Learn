test('array', () => {
  const names = ['Jennifer', 'Velensia', 'Santoti'];
  expect(names).toContain("Velensia");
  expect(names).toEqual(["Jennifer", "Velensia", "Santoti"]);

  const person = [
    {name: "Jennifer"},
    {name: 'Velensia'}
  ]

  expect(person).toContainEqual({name: "Velensia"});
  expect(person).toEqual([{name: "Jennifer"}, {name: "Velensia"}]);
})