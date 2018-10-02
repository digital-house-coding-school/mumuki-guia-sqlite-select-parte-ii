Empecemos practicando sobre la función coalesce.

Esta función recibe al menos dos valores. El resultado de coalesce será el primero de los valores que no sea nulo.

`COALESCE(columna, "Default")` intentará retornar el valor de la columna elegida y en caso de que la misma sea **NULL** retornará "Default".

De este modo te pedimos:

> 1. Una consulta que retorne nombre y modelo de los productos

> 2. Si el modelo es nulo, debe decir "No aplica".

> 3. La columna del modelo, a pesar de ser modificada por una función debe llamarse "modelo" en el resultado. Esto lo podes hacer aplicando aliases