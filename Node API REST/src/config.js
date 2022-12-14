import { config } from "dotenv";
config();

export default {
    port: process.env.port || 3000,
    dbServer: process.env.dbServer,
    dbDatabase: process.env.dbDatabase,
    dbUser: process.env.dbUser,
    dbPassword: process.env.dbPassword,
}