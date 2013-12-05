library(RJSONIO)

empty = data.frame(a = integer(), b = numeric())
r = data.frame(fromJSON(toJSON(empty)))
identical(dim(r), dim(empty))
identical(names(r), names(empty))

# The columns are of different types as the fromJSON version
# are just list()

oneRow = data.frame(a = integer(1), b = numeric(1))
r = data.frame(fromJSON(toJSON(oneRow)))
stopifnot(identical(dim(r), dim(oneRow)))
stopifnot(identical(names(r), names(oneRow)))


twoRows = data.frame(a = 1:2, b = as.numeric(1:2))
r = data.frame(fromJSON(toJSON(twoRows)))
stopifnot(all.equal(r, twoRows))


j = toJSON(twoRows, byrow = TRUE)
r = data.frame(do.call(rbind, fromJSON(j)))

j = toJSON(twoRows, byrow = TRUE, colNames = TRUE)
r = data.frame(do.call(rbind, fromJSON(j)))
all.equal(twoRows, r)
