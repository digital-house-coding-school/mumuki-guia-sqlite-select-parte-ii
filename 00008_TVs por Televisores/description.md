Nos pidieron que en los resultados deje de figurar la palabra "TV" y que diga "Televisor".

Dado esto te pedimos:

> 1. Una consulta que traiga únicamente la columna nombre de la tabla productos.

> 2. Cada aparición del texto "TV" debe reemplazarse por "Televisor"

> 3. La columna de resultado debe llamarse nombre. Esto podes hacerlo a través de un alias.

Te recordamos que la función para reemplazar texto se escribe así:

`REPLACE(CAMPO_DE_BUSQUEDA, TEXTO_BUSCADO, TEXTO_REEMPLAZO)`

Por ejemplo:

`REPLACE(titulo, "Harry", "Pepito")` reemplazaría en la columna titulo, las apariciones de "Harry" por "Pepito"