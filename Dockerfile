
# Use Node.js version 16
FROM node:16

# Set the working directory
WORKDIR /app

# Copy the package files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy all the application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
