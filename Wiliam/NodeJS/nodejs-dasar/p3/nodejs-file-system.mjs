import fs from "fs/promises";

const buffer = await fs.readFile("nodejs-file-system.mjs");

console.info(buffer.toString());

await fs.writeFile("contoh.txt", "HALO VELEN"); 