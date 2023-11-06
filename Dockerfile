# Use an official Node.js runtime as the base image
FROM node:14-alpine
# Set the working directory in the container
WORKDIR /app
# Copy package.json and package-lock.json to the working directory
COPY package.json .
# Install dependencies
RUN npm install
# Copy the rest of the application code to the working directory
COPY . .
# Start the React app when the container is run
CMD ["npm", "start"]