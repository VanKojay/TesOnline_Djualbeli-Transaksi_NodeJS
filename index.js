import express from "express";
import cors from "cors";
import UserRoute from "./routes/UserRoutes.js";
// import UserRoute from "./routes/UserRoutes";

const app = express();
app.use(cors());
app.use(express.json());
app.use(UserRoute);

app.listen(5000, () => console.log("Server Running.."));
