# Use an official base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json .
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 and start the app
EXPOSE 3000
CMD ["npm", "start"]

