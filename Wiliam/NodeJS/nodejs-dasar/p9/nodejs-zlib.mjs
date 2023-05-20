import zlib from 'zlib';
import fs from 'fs';

const source = fs.readFileSync('nodejs-zlib.mjs');
console.info(source.toString());
const result = zlib.gzipSync(source);
console.info(result);
fs.writeFileSync("zlib.mjs.txt", result);
