# Use an official node runtime as a parent image
FROM node:8

# Set the working directory to /usr/src/app
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . /usr/src/app

# Install any needed packages specified in requirements.txt
RUN npm install

# Run server.js when the container launches
CMD ["npm", "start"]
