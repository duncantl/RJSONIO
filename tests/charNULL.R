library(RJSONIO)
fromJSON("[ 1, 2, 3, null, 4 ]", asText = TRUE, simplify = TRUE)

fromJSON('[ "a", "b", "c", null, "d" ]', asText = TRUE, simplify = TRUE)
