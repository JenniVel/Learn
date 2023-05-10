// import dns from "dns";

// function callback(error, ip){
//   console.info(ip);
// }

// dns.lookup("www.programmerzamannow.com", callback);

import dns from "dns/promises";

const ip = await dns.lookup("www.mdp.ac.id");

// console.info(ip);
console.info(ip.address);
console.info(ip.family);