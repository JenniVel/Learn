import {callMe, MyException} from "../src/exception.js";

test('exception', ()=>{
  expect(()=> callMe('Velen')).toThrow();
  expect(()=> callMe('Velen')).toThrow(MyException);
  expect(()=> callMe('Velen')).toThrow("ada velen");
})

// import {callMe, MyException} from "../src/exception.js";

// test("exception", () => {
//     expect(() => callMe("Eko")).toThrow();
//     expect(() => callMe("Eko")).toThrow(MyException);
//     expect(() => callMe("Eko")).toThrow("Ups my exceptions happens");
// });

// test("exception not happens", () => {
//     expect(callMe("Budi")).toBe("OK");
// });