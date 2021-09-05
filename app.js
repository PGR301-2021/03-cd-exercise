const http = require('http');

const port = 8000;

const server = http.createServer((req, res) => {
   res.statusCode = 200;
   res.setHeader('Content-Type', 'application/json');
   var user = {
     first_name: "John",
     last_name: "Smith",
     age: "38",
     department: "Software"
     };
   res.end(JSON.stringify(user));
 });

 server.listen(port,  () => {
   console.log(`Server running` );
 });