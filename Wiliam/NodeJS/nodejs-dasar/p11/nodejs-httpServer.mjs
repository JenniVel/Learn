import http from 'http';

// const server = http.createServer((request, response)=>{
//   response.write("HALO VELEN");
//   response.end;
// });

// server.listen(3000);

const server = http.createServer((request, response)=>{
  if(request.method == "POST"){
    request.addListener("data", function(data){
        response.setHeader("Content-Type", "application/json");
        response.write(data);
        response.end();
    })
  }else{
    response.write("Hello world");
    response.end();
  }
});

server.listen(3000);