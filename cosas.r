x <- seq(0, 5, length = 100)
y1 <- x^2
plot(x, y, type = "l", xlab = "x", ylab = "y", main = "Plot of x^2")

y2 <- x^2 - x
lines(x, y2)

polygon(c(x, rev(x)), c(y1, rev(y2)), col = "gray")

x <- 1:10
y1 <- x^2
y2 <- x^3
matplot(x, cbind(y1, y2),
    type = "l",
    col = c("red", "blue"),
    lwd = 2,
    xlab = "X",
    ylab = "Y",
    main = "Plot of y1 and y2"
)

legend("topleft", legend = c("y1", "y2"), col = c("red", "blue"), lty = 1, lwd = 2)


# Definir un objeto


x <- structure(c(3, 2), names = c("X", "Y"), class = "Recta")

X

methods(class = "Recta")
