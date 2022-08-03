import { createServer, IncomingMessage, ServerResponse } from "http";

const port = 3000;

const server = createServer(
  (request: IncomingMessage, response: ServerResponse) => {
    console.log("[Family manager]", new Date().toISOString());
    console.log(`HEADERS ${JSON.stringify(request.headers)}`);
    response.writeHead(200);
    response.end("Familia Manager API");
  }
);

server.listen(port, () => console.log(`Server listening on port ${port}`));
