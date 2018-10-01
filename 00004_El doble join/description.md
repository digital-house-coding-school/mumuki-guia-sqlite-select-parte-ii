Recordemos la tabla de ventas:

<div
  class='mu-erd'
  data-entities='{
    "ventas": {
      "id": {
        "type": "Integer",
        "pk": true
      },
      "id_cliente" : {
        "type": "Integer",
        "fk": {
          "to": { "entity": "ventas", "column": "id" },
          "type": "many_to_one"
        }
      },
      "id_producto" : {
        "type": "Integer",
        "fk": {
          "to": { "entity": "ventas", "column": "id" },
          "type": "many_to_one"
        }
      }
    }
  }'>
</div>

Donde esta tabla es una tabla intermedia para denotar la relación de muchos a muchos entre productos y clientes.

**id_cliente** es una clave foránea a la tabla de clientes y **id_producto** es una clave foránea a la tabla de productos.

Tu desafío es el siguiente:

> 1. Hacer una consulta que traiga nombre y apellido de los clientes y nombre de los productos que haya comprado

> 2. Si los clientes no compraron ningún producto, deben figurar igualmente en el resultado