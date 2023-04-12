
test <- c(
    "hola", "1", " adios", "8.25", "-148.678",
    "52  ", " 34", "48", "3.45.56", "a3.5",
    "3.5a4", "8.", "-234", "00.45", "38b", "3.00", "0h3", "0.5", "- 4"
)
salida_test <- c("1", "8.25", "-148.678", "48", "-234", "3.00", "0.5")

expr <- paste0(
        "^",
        "([+-]?)",
        "(",
            "([1-9]\\d*)",
            "|",
            "0",
        ")",
        "(\\.\\d+)?",
        "$"
)
print(expr)

is_real_number <- function(vector) {
    vector[grepl(expr, vector)]
}

is_real_number(test)
salida_test
