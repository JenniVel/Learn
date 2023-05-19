import fs from 'fs'

const writer = fs.createWriteStream("target.log");
writer.write("Jennifer\n");
writer.write("Velensia\n");
writer.write("Santoti");
writer.close();

const reader = fs.createReadStream("target.log");
reader.on("data", function(data){
  console.info(data.toString());
  reader.close();
})