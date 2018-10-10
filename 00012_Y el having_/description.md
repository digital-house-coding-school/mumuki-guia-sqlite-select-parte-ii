Una vez más vamos a buscar la cantidad de productos por categoría y marca solo que...solo queremos ver filas que tengan al menos dos productos.

Para esto tendras que:

> 1. Hacer una junta entre la tabla de productos y marcas

> 2. Hacer una segunda junta entre la tabla de productos y categorías

> 2. Agrupar los resultados por marca y por categoría

> 3. Aclarar mediante **having** que solamente queremos ver aquellos resultados que tengan al menos 2 productos.

> 4. Incluir al principio del select los datos necesarios. El órden correcto será primero el nombre de la marca, luego el nombre de la categoria y finalmente la cantidad. La columna con la cantidad debe llamarse **cantidad**