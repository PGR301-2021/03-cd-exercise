const http = require('http');
const payload = require('./payload');



const server = http.createServer((req, res) => {
   res.statusCode = 200;
   res.setHeader('Content-Type', 'application/json');
   res.end(JSON.stringify(payload("Glenn", "Bech", 44, "DevOps")));
 });

 server.listen(port,  () => {
   console.log(`Server running` );
 });

