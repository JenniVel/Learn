import util from 'util';

const a = 'Velen';
console.info(`Nama saya ${a}`);

console.info(util.format("Nama saya %s", a));

const b = {
  Nama: "Velen",
  Alamat: "Prabu"
}
console.info(`BIODATA ${b}`);
console.info(`BIODATA ${JSON.stringify(b)}`);
console.info(util.format("Biodata %j", b));