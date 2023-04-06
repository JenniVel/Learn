function sampelPromise(){
    return Promise.resolve('Velen')
}

const data = await sampelPromise();

console.info(data);