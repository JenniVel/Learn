import cluster from 'cluster';
import http, { request } from 'http';
import os from 'os';
import process from 'process';

if(cluster.isPrimary){
  for(let i =0; i<os.cpus().length; i++){
    cluster.fork();
  }
  cluster.addListener('exit', (worker)=>{
    console.info(`Worker ${worker.id} is exited`);
    cluster.fork();
  })
}
if(cluster.isWorker){
  const server = http.createServer((request, response)=>{
    response.write(`Response from process ${process.id}`);
    response.end();
    process.exit();
  })
  server.listen(3000);
  console.info(`Start cluster worker ${process.id}`);
}