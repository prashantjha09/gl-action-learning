# Step 1: Use official Node.js image as the base
FROM node:14

# Step 2: Set working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json (if any) into the container
COPY package.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application code into the container
COPY . .

# Step 6: Expose the port that the app will run on
EXPOSE 3000

# Step 7: Define the command to run the app
CMD ["npm", "start"]

