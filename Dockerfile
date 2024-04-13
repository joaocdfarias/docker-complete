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

# Sets an environment variable
# Since we are setting in the .env file, this will be commented
# ENV PORT 80

# Exposes the container to port 80 (we need to add a dollar sign before a variable)
# EXPOSE $PORT

# Runs command on CLI
CMD [ "npm", "start" ]