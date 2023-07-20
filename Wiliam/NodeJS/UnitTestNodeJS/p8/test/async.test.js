import { sayHelloAsync } from "../src/async";

test('test async function', async() => {
  const result = await sayHelloAsync('Velen');
  expect(result).toBe('Hello Velen')
})

test('test async matchers', async()=>{
  await expect(sayHelloAsync('MW')).resolves.toBe('Hello MW');
  await expect(sayHelloAsync()).rejects.toBe('Name is empty');
})