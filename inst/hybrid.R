#' Oryginal file refactoring
#' Is working: YES

# Hello
cat("
  Hello!
  \nLet's draw a fractal triangle.
")

# Description
description <-
  "At each iteration, we randomly select one of the three vertices
  of the triangle and then draw a point in the middle of the segment
  defined by the starting point and the selected vertex. At the next iteration,
  we treat the freshly drawn vertex as the starting point."

# Get user input
point_msg <-
  "Specify a point in the [0;100]x[0;100] range or 0 for a random point:"
iterations_msg <-
  "Type the number of iterations (preferably in the range [1000;1000000]):"

#TODO get_point()
#TODO get_iterations()
# starting_point <- get_point(point_msg)
# iterations <- get_iterations(iterations_msg)
iterations <- 10000

#---------

# Starting points
Px <- c(50, 0, 100)
Py <- c(100, 0, 0)

plot(Px,Py,xlim=c(0,100),ylim=c(0,100),pch=20,main="Halfs of lengths", xlab="X", ylab="Y")

# Generating & calculating data

lista_odniesien <- sample(1:3, iterations, replace = TRUE)

x <- runif(1, 0, 100)
y <- runif(1, 0, 100)
DaneX <- c(x, numeric(iterations - 1))
DaneY <- c(y, numeric(iterations - 1))

i <- 1
for (l in lista_odniesien) {
  DaneX[i+1]=(Px[l]+DaneX[i])/2
  DaneY[i+1]=(Py[l]+DaneY[i])/2
  i <- i+1
}

# Writing existing data

points(DaneX,DaneY,pch=20)
points(x,y,pch=20,col="red")