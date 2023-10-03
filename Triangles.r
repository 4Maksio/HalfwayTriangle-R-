# Hello

cat("Hello!\nFrom a random point in X, Y real range <0;100> I will generate further points at coordinations being in the halfway between last point and randomly chosen from:\nP1=(0;0)\nP2=(50;100)\nP3=(100;0)\n")

# Get number of iterations

cat("Write number of iterations:\n")
times <- scan(n = 1, what = numeric())

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

# Writing existing data

points(dataX,dataY,pch=20)
points(x,y,pch=20,col="red")