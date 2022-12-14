import { getConnection, querys, sql } from "../models";

export const getClientes = async (req, res) => {
  try {
    const pool = await getConnection();
    const result = await pool.request().query(querys.getClientes);
    res.json(result.recordset);
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

export const crearClientes = async (req, res) => {
  let { nombre } = req.body;
  
  if (nombre == null) {
    return res.status(400).json({ msg: "Por favor llene el campo del nombre requerido" });
  }


  try {
    const pool = await getConnection();

    await pool
      .request()
      .input("nombre", sql.VarChar, nombre)
      .query(querys.crearClientes);

    res.json({ nombre });
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

export const getClientesById = async (req, res) => {
  try {
    const pool = await getConnection();

    const result = await pool
      .request()
      .input("id", req.params.id)
      .query(querys.getAlumnoById);
    return res.json(result.recordset[0]);
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

export const borrarClientesById = async (req, res) => {
  try {
    const pool = await getConnection();

    const result = await pool
      .request()
      .input("id", req.params.id)
      .query(querys.borrarClientesById);

    if (result.rowsAffected[0] === 0) return res.sendStatus(404);

    return res.sendStatus(204);
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

export const actualizarClientes = async (req, res) => {
  const { nombre } = req.body;

  if (nombre == null) {
    return res.status(400).json({ msg: "Por favor llene el campo del nombre requerido" });
  }

  try {
    const pool = await getConnection();
    await pool
      .request()
      .input("nombre", sql.VarChar, nombre)
      .input("id", req.params.id)
      .query(querys.actualizarClientes);
    res.json({ nombre });
  } catch (error) {
    res.status(500);
    res.send(error.message);
  }
};

export const defaultClientes = (req, res) => res.send('Error 404');