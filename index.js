const express = require('express');
const app = express();

// The port MUST match the port in the Dockerfile (EXPOSE 8080)
const PORT = 8080;

app.get('/', (req, res) => {
  res.send('Hello World! Your app is running via Jenkins and Docker using AWS [NEW APP].');
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});