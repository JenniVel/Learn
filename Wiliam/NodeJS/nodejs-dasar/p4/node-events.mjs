import {EventEmitter} from "events";

const emitter = new EventEmitter();

emitter.addListener("halo", (name)=>{
  console.info(`halooo ${name}`);
});

emitter.addListener("halo", (name)=>{
  console.info(`haiii ${name}`);
});

emitter.addListener("hai", (name)=>{
  console.info(`HAIII ${name}`);
})

emitter.emit("halo", "Velen");
emitter.emit("hai", "Jennifer Velensia Santoti");