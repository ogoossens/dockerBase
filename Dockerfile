    # Use the official Node.js image (latest LTS version)
    FROM node:20

    # Create and set the working directory
    WORKDIR /app

    # Copy package.json and package-lock.json files to the working directory
    COPY package*.json ./

    # Install the dependencies
    RUN npm install

    # Copy the rest of the application code to the working directory
    COPY . .

    ENV PORT=3000

    # Expose port 3000 to the outside world
    EXPOSE 3000

    # Define the command to run the application
    CMD ["node", "app.js"]