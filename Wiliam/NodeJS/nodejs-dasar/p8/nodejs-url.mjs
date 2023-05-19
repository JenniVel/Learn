import {URL} from "url";

// const a = new URL("https://williamtanuwijaya.github.io/velen?kelas=nodejs");

// console.info(a.toString());
// console.info(a.protocol);
// console.info(a.host);
// console.info(a.pathname);
// console.info(a.searchParams);

const b = new URL("https://williamtanuwijaya.github.io/velen?kelas=nodejs");
b.host = "ucok.com";
const searchParams = b.searchParams;
searchParams.append("status", "premium");

console.info(b.toString())