# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json .
COPY package-lock.json .

# Install production dependencies
RUN npm install --production

# Copy the rest of the application code to the working directory
COPY . .

# Exposing port 3000
EXPOSE 3000

# Start the React app when the container is run
CMD ["npm", "start"]
