import timers from 'timers/promises'

for await (const startTime of timers.setInterval(1000, new Date())){
  console.info(`start time at ${startTime}`);
}

// console.info(new Date());
// const name = await timers.setTimeout(5000, "Eko");
// console.info(new Date());
// console.info(name);