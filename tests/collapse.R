library(RJSONIO)

json = toJSON(list( foo = c( one = 1, two = 2 ), bar = c( three = 3, four = 4 )), collapse = "")
stopifnot( !grep("\n", json) )
