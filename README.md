# Presidentes argentinos
 
*Se quiere analizar la imagen positiva de los diferentes presidentes que tuvo el país a lo largo de la historia.*
 
La imagen positiva de cada presidente se calcula como la sumatoria del impacto que genera en la población cada uno de sus actos de gobierno que realizó durante su mandato.
 
* Inauguraciones de obras: Genera un impacto que se calcula como la cantidad de personas afectadas multiplicado por su importancia, más un valor que depende de la naturaleza de la obra (viales 10%, habitacionales 20%, salud 50%, y así, hay otras opciones, cada una con su correspondiente porcentaje)
* Discursos: El impacto es la cantidad de personas presentes por la importancia del discurso, todo eso por la intensidad del aplauso.
* Promesas: Son como discursos, pero su impacto puede ser negativo o positivo: Si la promesa está cumplida, el impacto es el doble del que le correspondería por ser discurso, pero si la promesa no se cumplió, lo que produce es un impacto de igual magnitud, pero negativo.
* Denuncias de corrupción por TV (sí, también se consideran actos de gobierno): Genera un impacto negativo que se calcula como la cantidad de personas que ven el programa multiplicado por la importancia de la denuncia, y a su vez, multiplicado por un valor que depende de quién es la persona que hace la denuncia: Si es un periodista, dicho valor es la mitad de la audiencia del programa; en cambio, si es un político se calcula como el mínimo entre la cantidad de seguidores en redes sociales del político y la audiencia del programa.
A su vez, la imagen positiva de cualquier presidente aumenta según el tiempo que pasó de su muerte, a razón de un 1% por año. (Para evitar suspicacias, sólo se analizan presidentes fallecidos)
 
Se pide:

1. Calcular la imagen positiva de un presidente.
2. Encontrar el presidente con mayor imagen positiva de la historia del país.
3. Verificar si algún presidente realizó más de 4 acciones de gobierno en su mandato.
4. Hacer que todas las promesas incumplidas de un presidente se cumplan
5. Crear y registrar una denuncia a un presidente
6. Representar que se descubre que una denuncia hecha aparentemente por un periodista, en realidad fue hecha por un político opositor.
 
Realizar al menos dos tests del punto 1), contemplando situaciones significativas.

Implementar todo el código necesario para los puntos pedidos, no necesariamente para probar todas las funcionalidades.

Justificar conceptualmente:

* ¿Cómo impacta en la solución que las denuncias también las pueda hacer un sindicalista?
* ¿En qué caso fue útil la herencia?
