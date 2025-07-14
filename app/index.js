const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send(`
    <h1>🎬 Welcome to Prime Video Clone!</h1>
    <p>This is a mock streaming app deployed on AWS EKS via a complete DevSecOps pipeline.</p>
  `);
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});