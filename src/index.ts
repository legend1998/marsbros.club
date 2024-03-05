import express, { Express, Request, Response } from "express";
import path from "path";

const app = express();
app.use("/solid", express.static("public"));

app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "..", "templates", "landing.html"));
});

app.listen(8080, () => {
  console.log("listening on 8000");
});
