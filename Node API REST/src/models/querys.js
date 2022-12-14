export const querys = {

    crearClientes:
      "INSERT INTO clientes VALUES (@nombre);",

    getClientes: "SELECT * FROM clientes",

    getClientesById: "SELECT * FROM clientes WHERE id_clientes = @id  ",
  
    actualizarClientes:
      "UPDATE clientes SET nombre = @nombre WHERE id_clientes = @Id",
  
    borrarClientesById: "DELETE clientes where id_clientes = @Id",
  
  };
  