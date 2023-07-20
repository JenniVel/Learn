import {sayHelloAsync} from "../src/async.js";

test.concurrent("concurrent 1", async ()=>{
    await expect(sayHelloAsync("Velen")).resolves.toBe("Hello Velen");
})

test.concurrent("concurrent 2", async ()=>{
    await expect(sayHelloAsync("Velen")).resolves.toBe("Hello Velen");
})

test.concurrent("concurrent 3", async ()=>{
    await expect(sayHelloAsync("Velen")).resolves.toBe("Hello Velen");
})

test.concurrent("concurrent 4", async ()=>{
    await expect(sayHelloAsync("Velen")).resolves.toBe("Hello Velen");
})

test.concurrent("concurrent 5", async ()=>{
    await expect(sayHelloAsync("Velen")).resolves.toBe("Hello Velen");
})