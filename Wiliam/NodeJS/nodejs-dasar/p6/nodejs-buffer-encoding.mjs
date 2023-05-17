const buffer = Buffer.from("Jennifer Velensia Santoti", "utf8");

console.info(buffer.toString()); 
console.info(buffer.toString("hex"));
console.info(buffer.toString("base64"));

const bufferBase64 = Buffer.from("SmVubmlmZXIgVmVsZW5zaWEgU2FudG90aQ==", "base64");
console.info(bufferBase64.toString("utf8"));