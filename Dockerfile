# Use an official Node.js image as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and bun.lockb (if applicable)
COPY package.json bun.lockb ./

# Install Bun
RUN npm install -g bun

# Install project dependencies using Bun
RUN bun install

# Copy the rest of the project files
COPY . .

# Expose the port your Elysia app runs on (adjust if necessary)
EXPOSE 3000

# Start the Elysia app using Bun
CMD ["bun", "run", "start"] 