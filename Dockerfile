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

# Defines an argument
ARG DEFAULT_PORT=80

# Sets an environment variable
ENV PORT $DEFAULT_PORT

# Exposes the container to port 80 (we need to add a dollar sign before a variable)
EXPOSE $PORT

# Runs command on CLI
CMD [ "npm", "start" ]