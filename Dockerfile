# Use official Node.js image
FROM node:18

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app
COPY . .

# Expose the port the app will run on
EXPOSE 3001

# Run the app
CMD ["npm", "start"]

