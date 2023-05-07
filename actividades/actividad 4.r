desv_tipicas <- c(0.5, 0.75, 1)

x <- seq(0, 6, 0.01)
medias <- 3
y <- dnorm(x, mean = medias, sd = desv_tipicas[1])
colores <- c("red", "darkgreen", "blue")

plot(x,
    y,
    type = "l",
    col = colores[1],
    main = expression(paste("Gráficos de la densidad de la distribución N(3,", sigma, ")")),
    xlab = "x",
    ylab = "f(x)"
)

for (i in 2:length(desv_tipicas)) {
    y <- dnorm(x, mean = medias, sd = desv_tipicas[i])
    lines(x, y, col = colores[i])
}

leyendas <- c(
    expression(paste(sigma, " = 0.5")),
    expression(paste(sigma, " = 0.75")),
    expression(paste(sigma, " = 1"))
)
legend("topright", legend = leyendas, col = colores, lty = 1)
