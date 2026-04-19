# Use an official lightweight Node.js base image
FROM node:18--slim

# Set working directory inside container
WORKDIR /app

# Copy files from local machine into container
COPY backend/package*json ./

# Install dependencies listed in requirements.txt
RUN npm install 

#Copy the rest of the backend code
COPY backend/ .

# Expose the port the app runs on
Expose 5000

# Start the server
CMD ["node", "src/server.js"]
