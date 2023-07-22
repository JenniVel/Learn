export class MyException extends Error {}

export function callMe(name) {
  if (name === 'Velen') {
    throw new MyException('ada velen');
  } else {
    return 'OK';
  }
}


// export class MyException extends Error {

// }

// export const callMe = (name) => {
//     if (name === "Eko") {
//         throw new MyException("Ups my exceptions happens");
//     } else {
//         return "OK";
//     }
// };