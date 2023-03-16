######################
# Vectores num�ricos
######################
# Crear un vector de 0 de tipo integer y dimensi�n 5
x <- integer(5)
# Comprobar que es un vector
is.vector(x)
# Comprobar que es un vector de n�meros
is.vector(x, mode = "numeric")
is.numeric(x)
# Comprobar que es un vector de tipo integer
is.vector(x, mode = "integer")
is.integer(x)
is.double(x)
# Definir un vector de enteros con los n�meros enteros 5,6,...,10
x <- 5:10
is.vector(x, mode = "integer")
is.integer(x)
# A�adirle al principio el n�mero entero 2 y al final el n�mero entero 20
x <- c(2L, x, 20L)
is.integer(x)
# A�adirle al final un dato entero faltante
x <- c(x, NA)
is.integer(x)
# Crear un vector de enteros con el n�mero entero 1
x <- 1L
is.integer(x)
# Crear un vector de enteros con un dato faltante
x <- NA_integer_
is.integer(x)
# Crear un vector de n�meros reales con un dato faltante
x <- NA_real_
is.integer(x)
is.double(x)
# Crear un vector de n�meros reales con los n�meros enteros 1 a 5
x <- c(1, 2, 3, 4, 5)
is.integer(x)
is.double(x)
x <- as.double(1:5)
is.integer(x)
is.double(x)
# Crear un vector de n�meros reales con la secuencia -5,-4,-3,....,3,4,5
x <- seq(-5, 5, by = 1)
is.integer(x)
is.double(x)
# Convertir el vector secuencia a un vector de enteros
xx <- as.integer(x)
is.integer(xx)
is.double(xx)
# Crear un vector de n�meros reales con la secuencia 1,1.25,1.5,...,4
x <- seq(1, 4, by = 0.25)
# Redondear la secuencia a 1 cifra decimal
round(x, digits = 1)
# Comprobar si un n�mero es 0
# .Machine$double.eps is the smallest possible floating point value that can be represented by the running machine.
is.zero <- function(x, tol = .Machine$double.eps^0.5) abs(x) < tol
# Comprobar si los elementos de un vector num�rico son n�meros enteros
is.wholenumber <- function(x, tol = .Machine$double.eps^0.5) abs(x - round(x)) < tol
is.wholenumber(x)
# Divisi�n entera: cociente y resto
5 %/% 2
5 %% 2
# Crear un vector con la secuencia 3,5,2,4,8,6
x <- c(3, 5, 2, 4, 8, 6)
# Ver si est� ordenado
is.unsorted(x)
# Ordenando un vector
sort(x)
# Obteniendo la permutaci�n de los elementos de un vector que lo ordena
order(x)
x[order(x)]
# Comprobar y seleccionar elementos de un vector que verifican cierta condici�n
x <= 5
which(x <= 5)
x[x <= 5]
x[which(x <= 5)]
# Rango de un vector, m�nimo y m�ximo
range(x)
min(x)
max(x)
# �ndices de los valores m�nimo y m�ximo
which.min(x)
which.max(x)
# M�nimos y m�ximos en paralelo
pmin(c(2, 4, 6), c(5, 3, 1), c(7, 2, 4))
pmax(c(2, 4, 6), c(5, 3, 1), c(7, 2, 4))
# Encontrar el �ndice de la primera aparici�n de los elementos de un vector en otro vector
match(c(1, 4, 5), c(2, 1, 3, 3, 4, 1))
# Encontrar los �ndices de todas las apariciones de los elementos de un vector en otro vector
outer(c(1, 4, 5), c(2, 1, 3, 3, 4, 1), "==")
apply(outer(c(1, 4, 5), c(2, 1, 3, 3, 4, 1), "=="), 1, which)
# Intersecci�n, uni�n y diferencia de conjuntos representados mediante vectores
intersect(c(1, 3, 2), c(3, 5, 4, 1))
union(c(1, 3, 2), c(3, 5, 4, 1))
setdiff(c(1, 3, 2), c(3, 5, 4, 1))
setdiff(c(3, 5, 4, 1), c(1, 3, 2))
# Elementos �nicos en un vector (en general, en un objeto)
x <- c(2, 1, 3, 3, 4, 1)
unique(x)
intersect(x, x)
