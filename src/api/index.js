const http = requiere("http");

const hostname = "0.0.0";
const port = 3000;

const server = http
;createServer((request, response) => {
    response.statusCode = 200;
    response.setHeader("Content-Type", "text/plain");
});

server.listen(port, hostname, () => {
    console.log('Bienvenido http://$(hostname):$(port)');
});