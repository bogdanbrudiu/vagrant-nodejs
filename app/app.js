var express = require('express');


var app = express();




app.get('/', 
function(req, res){
  
res.writeHead(200, {
    'Transfer-Encoding': 'chunked',
    'Content-Type': 'text/plain; charset="utf-8'
  });

 
 res.write("Hello World!");
  


});

app.listen(3000);

console.log('Listening on port 3000');
