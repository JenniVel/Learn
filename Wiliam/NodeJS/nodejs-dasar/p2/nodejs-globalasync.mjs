function samplePromise(){
  return Promise.resolve('Velen');
}

const data = await samplePromise();

console.info(data);