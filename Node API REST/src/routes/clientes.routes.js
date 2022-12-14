import { Router } from "express"
import {
    crearClientes,
    getClientes,
    getClientesById,
    actualizarClientes,
    borrarClientesById
} from "../controllers/clientes.controller.js"

const router = Router();


router.post("/clientes/crearClientes", crearClientes);

router.get("/clientes/getClientes", getClientes);

router.get("/clientes/getClientesById/:id", getClientesById);

router.put("/clientes/actualizarClientes/:id", actualizarClientes);

router.delete("/clientes/borrarClientesById/:id", borrarClientesById);



export default router;

