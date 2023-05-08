import path from "path";

const file = "D:/VELEN/LEARN_WITH_VELEN/Wiliam/NodeJS/nodejs-dasar/p3/nodejs-path.mjs";

console.info(path.sep);
console.info(path.dirname(file));
console.info(path.basename(file));
console.info(path.extname(file));
console.info(path.parse(file));