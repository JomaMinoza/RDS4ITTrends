#Chapter 1 to 3: You can do arithmetic and use # for comments
# this is a comment
# followed by math 
2*2
2+2
# followed by Array Opsmode(x)

# doing complicated math examples 
10^2+3*60/8-3
5^3*(6-2)/(61-3+4)
2^(2+1)-4+64^((-2)^(2.25-1/4))


# Logarithms 
log(x=243,base=3)

# Exponentials
exp(x=3)

log(x=20.08554)


Lesson 2: Assigning objects and Vectors


# you can use either <- or = sign
x <-3
y =3
x+y



# create a vector
myvec <- c(1,2,1,42)
myvec


# Then create a second vector
myvec2 <- c(2,3,4,5)
myvec2

# now create a third vector by appending both myvec and myvec2 together
myvec3 <-c(myvec,myvec2)
myvec3


# creating sequences with the : colon 
# means start from 3, and increment by 1 until you get to 27
3:27



foo <- 5.3
bar <-foo:(-47+1.5)
bar


# we can also use the seq command which provides more options
seq(from=3, to=27, by=4)

# instead of by you can also use length.out to print out exacty 40 numbers from 3 to 27
seq(from=3, to=27, length.out = 40)


# Repetition with rep command
rep(x=1,times=4)
rep(x=c(3,62,8.3), times=3)
rep(x=c(3,62,8.3), each=2)
rep(x=c(3,62,8.3),times=3, each=2)



# sort function
sort(x=c(2.5,-1,-10, 3.44),decreasing = FALSE)
sort(x=c(2.5,-1,-10, 3.44),decreasing = TRUE)



# finding a vector with length
length(x=c(2.5,-1,-10, 3.44))
length(x=5:13)



# Subsetting or how to address specific elements of an array
# use [] to specify the nth element of each array
myvec3
length(myvec3)
myvec3[4]
myvec3[5]
myvec3[4]+myvec3[5]



# Vector-Oriented behavior
foo <-5.5:0.5
foo
foo-c(2,4,6,8,10,12)



# why vectors? Because it is faster adding each element by 3
qux <-3
foo+qux
sum(foo)


# Vector oriented behavior also applies to overwriting multiple elements
foo
foo[c(1,3,5,6)]-c(-99,99)

# other functions: sqrt, prod



# from vectors to Matrix (2D) to Arrays (xD)
# use matrix command to create matrix
A <-matrix(data=c(1,2,3,4),nrow=2, ncol = 2)
A


# you can fill a matrix by row or column using the byrow=true|false
A <- matrix(data = c(1,2,3,4,5,6),nrow = 2, ncol = 3,byrow = FALSE)
A
B <- matrix(data = c(1,2,3,4,5,6),nrow = 2, ncol = 3,byrow = TRUE)
B


# you can also use rbind anc cbind to create matrix
# rbind creates by row
# cbind creates by column
A <-rbind(1:3,4:6)
A
B <-cbind(1:3,4:6)
B
# then get its dimensions using the dim command
dim(A)
dim(B)



# you can also refer to each subelement by the [] notation
A
nrow(A)
ncol(A)
dim(A)[2]



# subsetting of a matrix using []
A
A[1,2]



# to extract an entire column
A
A[,2]
# to extract an entire row
A[1,]



# you can also extract multiple rows or columns
A
A[1:2,]
A[,1:2]


# you can omit rows and columns in matrix by using the negative sign
A
# to show only column 1 and 3 
A[,-2]


#To overwrite particular elements, or entire rows or columsn, you identify the elecments to be replaced and then assign the new values, as you did with vectors. 

#The new elements acan be a single avlue, a vector of the same length or a vector whose length evenly divides the number of elements to be replaced.

# copy matrix A to B
B <- A
B
# overwrite the 2nd row of B with the sequence 1,2,3
B[2,]<-1:3
B



# overwrite 2nd column of the first and 3rd rows with 900
B
B[-2,2]<-900
B


C <-  matrix(data = 1:100,nrow = 5, ncol = 20,byrow = TRUE)
C[1,1:20][C[1,1:20]<10]
C[,1][C[,1]>10]

#Matrix Operations and Algebra

# Matrix Transpose using t()
A<-rbind(c(2,5,2),c(6,1,4))
A
t(A)


#Identity Matrix is a square matrix mxm with ones on the diagonal and zeros elsewhere.
#A quick way to generate an identity matrix is with the use of the diag() command

A <- diag(x=3)
A


#Scalar Multiplication of a Matrix
#Multiplication of any matrix A by a scalar values (a) results in a matrix in which every individual element is multipled by (a)


A <-rbind(c(2,5,2),c(6,1,4))
A
a<-2
a*A


#Matrix Addition and Subtraction
#Additions and substractions of any two matrices of the SAME size is also performed in an element wise fashion.

A <-rbind(c(2,5,2),c(6,1,4))
A
B <- rbind(c(-2,3,6),c(8.1,8.2,-9.8))
B
A-B


#Matrix Multiplication
#In order to multiply two matrics (mxn) and (pxq)
#n must be equal to p
#the result is mxq matrix


A <-rbind(c(2,5,2),c(6,1,4))
dim(A)
B <-cbind(c(3,-1,1),c(-3,1,5))
dim(B)



A
B
A %*% B


#the matrix multiplication is non commutative.
#reversing the order will give different results:

B %*% A


#Chapter 4 Non-Numeric Values
#Logical Values are TRUE (1) or FALSE(0). 
#Here logical values can be added:

TRUE+TRUE
FALSE-TRUE


#Relational Operators: (==, !=, >,<,>=,<=)
#Multiple comparisons (& | !)

#Concat function

qux <-c("awesome","R","is")
length(x=qux)
qux
cat(qux[2],qux[3],"totally",qux[1],"!")


#Using the substring function
#Substr() function

foo <-"This is a character string!"
substr(x=foo,start=21, stop=27)


#Factors are R's way of representing data points tha tfit in only one of a finite number of distinct categories (like nominal values ie sex=male or female)


sex.char <-c("Male","Female","Male","Female")
sex.char
sex.char.fac<-factor(x=sex.char)
sex.char.fac




