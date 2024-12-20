# Functions

validate_numeric_input <- function(value) {
  if (
      is.na(value) ||
        is.null(value) ||
        length(value) == 0 ||
        !is.numeric(value)) {
    stop("Wrong input! Expected numeric.")
  }
  return(TRUE)
}

get_numeric_input <- function(message) {
  cat(message, "\n")
  input <- scan(what = numeric(), nmax = 1, quiet = TRUE)
  validate_numeric_input(input)
  return(input)
}

# Hello

cat("
  Hello!
")
# \nYou will give the coordinates of a point as two real numbers in the range [0;100] 
# and one number determining iterations (preferred values between 1 000 and 1 000 000) 
# and I'm going to show you some magic.

# Get user input

cat("Write number of iterations:\n")
times <- scan(n = 1, what = numeric())

# Starting points

Px <- c(50,0,100)
Py <- c(100,0,0)

plot(
   Px,
   Py,
   xlim=c(0,100),
   ylim=c(0,100),
   pch=20,
   main="Halfs of lengths",
   xlab="X",
   ylab="Y"
)

# Generating & calculating data

ref_list <- sample(1:3,times,replace = TRUE)

x <- runif(1, 0, 100)
y <- runif(1, 0, 100)
dataX <- c(x,numeric(times-1))
dataY <- c(y,numeric(times-1))

i <- 1
for (l in ref_list) {
   dataX[i+1]=(Px[l]+dataX[i])/2
   dataY[i+1]=(Py[l]+dataY[i])/2
   i <- i+1
}

# Writing existing data

points(dataX,dataY,pch=20)
points(x,y,pch=20,col="red")