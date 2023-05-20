import zlib from 'zlib';
import fs from 'fs';

const b = fs.readFileSync("zlib.mjs.txt");
const a = zlib.unzipSync(b);
console.info(a.toString());