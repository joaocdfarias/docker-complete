# Picks image from Dockerhub
FROM node

# Sets a working directory for the project
WORKDIR /app

# Copies the package.json to the workdir, we can use "." since we are already in the workdir
COPY package.json .

# Installs all dependencies from package.json
RUN npm install

# Copies everything from local dir to workdir
COPY . .

# Exposes the container to port 80
EXPOSE 80

# Runs command on CLI
CMD [ "node", "server.js" ]