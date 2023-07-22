import { getBalance } from "../src/async";

test('mock async function', async () => {
  const from = jest.fn().mockResolvedValueOnce(1000);
  await expect(getBalance("Velen", from)).resolves.toEqual({
    name: "Velen", balance: 1000
  });

  await expect(from.mock.calls.length).toBe(1);
  await expect(from.mock.results[0].value).resolves.toBe(1000);
});

test.failing('mock async function rejected', async () => {
  const from = jest.fn().mockRejectedValueOnce(new Error("Ups"));
  await getBalance("Velen", from);
});