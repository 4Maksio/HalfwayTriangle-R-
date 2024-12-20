# Number of iterations

times <- 100000

# Starting points

Px <- c(50,0,100)
Py <- c(100,0,0)

plot(Px,Py,xlim=c(0,100),ylim=c(0,100),pch=20,main="Halfs of lengths", xlab="X", ylab="Y")

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

# Trashing spare points

dataX <- dataX[-(1:10)]
dataY <- dataY[-(1:10)]

# Writing existing data

points(dataX,dataY,pch=20)