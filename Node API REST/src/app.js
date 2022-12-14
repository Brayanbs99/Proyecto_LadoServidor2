import express from 'express'
import cors from "cors";
import morgan from 'morgan';
import config from './config.js';
import clientesRoutes from "./routes/clientes.routes.js"

const app = express()

app.set("port" , config.port);

app.use(cors());
app.use(morgan("dev"));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.use("/api", clientesRoutes);

export default app