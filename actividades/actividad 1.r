# Nota: utilizo el pipe operator incluido en R a partir de la versión 4.1
# Asumo que usas esa versión o una más moderna

x <- rep(c(1, 2, 3, 4), c(3, 9, 6, 2))
set.seed(4)
y <- round(runif(length(x), 1, 6), digits = 2)
z <- c(1, 2.5, 3.5, 4.5, 6)

discretizer <- function(values, intervals) {
    # Turns the continuous Y variable into a discrete variable,
    # according to its belonging to the specified intervals
    # Returns a boolean matrix indicating to which interval the value belongs
    outer(values, intervals[c(-length(intervals))], FUN = ">=") &
        outer(values, intervals[c(-1)], FUN = "<=")
}

m1 <- t(discretizer(y, z))
m1
y_disc <- m1 |>
    data.frame() |>
    lapply(which) |>
    unlist()

count_frequency <- function(i, j) {
    # Devuelve el valor de la casilla (i,j) en la
    # matriz de frecuencias absolutas
    sum(x == i & y_disc == j)
}

freq_matrix <- outer(1:4, 1:4,
    FUN = function(a, b) mapply(count_frequency, a, b)
)


rownames(freq_matrix) <- 1:4
colnames(freq_matrix) <- c("(1,2.5]", "(2.5,3.5]", "(3.5,4.5]", "(4.5,6]")
freq_matrix
