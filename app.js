const http = require('http');
const payload = require('./payload');

const port = 3000;

const server = http.createServer((req, res) => {
   res.statusCode = 200;
   res.setHeader('Content-Type', 'application/json');
   res.end(JSON.stringify(payload("Glenn", "Bech", 45, "DevOps")));
 });

 server.listen(port,  () => {
   console.log(`Server running` );
 });

