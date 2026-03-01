FROM node:20-alpine

# Create app directory
WORKDIR /app

# The application currently does not have a package.json, so we just copy the source files
COPY server.js ./
COPY config.example.json ./
COPY data.example.json ./
COPY templates/ ./templates/
COPY assets/ ./assets/

# The default port is 3000 as per config.example.json
EXPOSE 3000

CMD ["node", "server.js"]
