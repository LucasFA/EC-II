
evaluate_expression <- function(text, vec) {
    # La función no acepta valores de text que contengan varias variables
    f <- function(value) {
        expr <- gsub("[a-zA-Z]+", as.character(value), text)
        eval(parse(text = expr))
    }

    sapply(vec, f)
}
