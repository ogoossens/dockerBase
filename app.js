// Import the express module
const express = require('express');

// Create an instance of express
const app = express();

// Define a route handler for the default home page
app.get('/', (req, res) => {
  res.send('Addie helloes the World!');
});

// Start the server and listen on port 3000
const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});