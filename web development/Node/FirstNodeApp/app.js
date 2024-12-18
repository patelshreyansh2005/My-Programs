console.clear();
const http = require('http');

const server = http.createServer((req,res)=>{
    res.writeHead(200, { 'Content-Type': 'text/html' });
    const url = req.url;
    var pagetype;
    if (url == "/") {
        pagetype = "Home";
    }
    else if(url ==  "/about"){
        pagetype = "About";
    }
    else if(url ==  "/contact"){
        pagetype = "Contact Us";
    }
    else{
        pagetype = "Invalid URL";
    }
    var respons = "<!DOCTYPE html><html><head><title>My Website</title></head><body><h1>"+pagetype+"</h1></body></html>";
    res.end(respons);

});

const port = 3030;
server.listen(port,()=>{
    console.log('Server running at http://localhost:'+port+'/');
})