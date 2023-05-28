import https from 'https';

const url = 'https://velen.free.beeceptor.com';
const request= https.request(url, {
  method: "POST",
  headers:{
    "Content-Type":"application/json",
    "Accept":"application/json",
  }
}, function(response){
  response.addListener("data", function(data){
    console.info(`Receive : ${data}`); 
  })
});

const body = JSON.stringify({
  firstName: "Jennifer",
  middleName: "Velensia",
  lastName: "Santoti"
});

request.write(body);
request.end();