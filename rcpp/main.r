library(Rcpp)

# write C++ function inside R, inline function
cppFunction("int add(int x, int y, int z)
{
    int sum = x + y + z;
    return sum;
}")

print(add(1, 2, 3))

# run compiled C++ code
sourceCpp("rcpp/example.cpp")

# x <- runif(1e5)
# bench::mark(
#   mean(x),
#   meanC(x)
# )

meanC(c(10, 20, 30, 40, 50))
