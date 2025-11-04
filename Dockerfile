# Start from the official Node 18 (alpine) image
FROM node:18-alpine

# Create and set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the app's dependencies
RUN npm install

# Copy the rest of your application code (e.g., index.js)
COPY . .

# Tell Docker the app runs on port 8080
EXPOSE 8080

# The command to run when the container starts
CMD ["npm", "start"]