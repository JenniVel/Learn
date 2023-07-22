test("test ToBe", ()=>{
  let nama = 'Velen';
  let hello = `Hello ${nama}`;

  expect(hello).toBe('Hello Velen');
});

test("test toEqual", ()=>{
  let person = {
    id: 'velen'
  };
  Object.assign(person, {name: 'Velen'});
  expect(person).toEqual({id: 'velen', name: 'Velen'});
})