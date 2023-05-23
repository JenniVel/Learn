import { parentPort, threadId} from "worker_threads";

parentPort.addListener("message", function(message){
  for(let i = 0; i<message; i++){
    console.info(`thread-${threadId} recieve message : ${i}`);
    parentPort.postMessage(i);
  }
  parentPort.close();
})