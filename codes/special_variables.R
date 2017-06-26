#Special Values, Classes and Coercion

#Special Values
#Infinity
#Occurs when a number is too large for R to represent.
#This inf is case sensitive.
#It can only be associated with numeric values

foo<-Inf
foo
bar<-c(3401,Inf,3.1,-555,Inf,43)
bar

bar<-90000^200
bar

# example of negative Inf
qux <-c(42,-Inf,-Inf,Inf,-45623.3)
qux


#Note, you can calculate using Inf for example
Inf* -2


#You will see that multiplying Inf with a negative number produces a negative Inf.
#If you add or multiply infinity you also get infinity as a result

Inf+1
4*-Inf
-45.2-Inf
Inf-45.2
Inf+Inf
Inf/23




#Zero and infinity go hand in hand.
#Any finite number dived by infinity will result in zero.


-92/Inf
92/Inf
-92/-Inf
92/-Inf


#Any number divided by zero becomes Inf

92/0
-92/0



#To detect Inf values, use is.infinite or is.finite 


# see the contents of qux
qux
# test for inf values
is.infinite(x=qux)
# test for finite values
is.finite(x=qux)


#Notice that these functions does not test for either +Inf or -Inf.
#Finally relational operators work on Inf values

qux
-Inf<Inf
Inf>-Inf
qux==Inf
qux==-Inf



#Nan Not a number
#Used when it is impossible to express the result of a calculation using a number, Inf, or -Inf

foo<-NaN
foo
bar<-c(NaN,54.3,-2,NaN,90094.123,-Inf,55)
bar

#Whenever you attempt to cancel Inf in any way, the result will be Nan

-Inf+Inf
Inf/Inf

#Note that any matheatical operation involving NaN will simply result in Nan

NaN+1
2+6*(4-4)/0
3.5^(-Inf/Inf)


#Functions to detect Nan : Is.NaN

bar
is.nan(x=bar)
!is.nan(x=bar)
is.nan(x=bar)| is.infinite(x=bar)
bar[-which(is.nan(x=bar)|is.infinite(x=bar))]


#Note: 
#The last line uses WHICH command to convert these logical values into numberc index positions so that you can remove them with the #negative indexes in the square brackets.

#Na Not Available
#NA is used for missing values in data sets.
#Whereas NaN is only used for numeric values, NA can also be used for both numeric and non-numberic settings.


foo<-c("character","a",NA,"with","string",NA)
foo


bar<-factor(c("blue",NA,NA,"blue","green","blue",NA,"red","red",NA,"green"))
bar


baz <-matrix(c(1:3,NA,5,6,NA,8,NA),nrow=3,ncol=3)
baz

#Use Is.na to detect NA elements

baz
is.na(x=baz)


# is.na also flags the NaN values
qux<-c(NA,5.89,Inf,NA,9.43,-2.35,NaN,2.10,-8.53,-7.58,NA,-4.58,2.01,NaN)
qux
is.na(x=qux)

#If you want to identify Na and NaN separately

qux
which(x=is.nan(x=qux))

#If you want to identify NaN values specifically:

qux
which(x=(is.na(x=qux)&!is.nan(x=qux)))


#After locating the offending elements, you an use negative indexes in square brackets to remove them.
#Another way in R is to use the na.omit. It will take a structure and delete all NAs from it. 
#na.omit will also apply to NaNs if the elements are numeric

qux
quux<-na.omit(object=qux)
quux


#Null
#Used to EXPLICITLY define an empty entity.
#Notice there is NO index position for NULL values


foo <- NULL
foo
bar <- NA
bar


c(2,4,NA,8)
c(2,4,NULL,8)

#The line using NA has 4 elements, while the line using NULL has only 3 elements
#Null cannot take up a position in the vector.

#The is.null function is used to check when an element is explicitly NULL.

opt.arg <-c("string1","string2","string3")
opt.arg
is.na(x=opt.arg)
is.null(x=opt.arg)


#If the argument is empty using NULL over NA for the check is better.

opt.arg<-c(NA,NA,NA)
is.na(x=opt.arg)



opt.arg<-c(NULL,NULL,NULL)
is.null(x=opt.arg)

opt.arg<-c(NULL,NULL,1)
is.null(x=opt.arg)
opt.arg<-c(NULL,NULL,NA)
is.null(x=opt.arg)


#Null dominates any arithmetic, even if it includes other special values


NULL+53
53<NULL

NaN-NULL+NA/Inf





#Understanding Types, Classes and Coercion 
# Attributes

#Attributes can be implicit or explicit.

foo<-matrix(data=1:9,nrow=3,ncol=3)
foo
attributes(foo)

#You can also use this:

attr(x=foo,which="dim")



#When additional attributes are created, you can see all with the attributes command
#In this example, we added dimnames to the matrix.



foo<-matrix(data=1:9,nrow=3,ncol=3,dimnames=list(c("a","b","c"),c("d","e","f")))
foo
attributes(foo)



#We can extract the values of dimnames as well


dimnames(foo)

#we can also assign an object after it has been created.


foo
bar<-list(c("a","b","c"),c("d","e","f"))
bar



#Object Class
#Every object we create is identified either implicitly or explicitly whith at least one class.


num.vec1<-1:4
num.vec1
num.vec2<-seq(from=1, to=4,length=6)
num.vec2
char.vec<-c("a","few","strings","here")
char.vec
logic.vec<-c(T,F,F,F,T,F,T,T)
fac.vec<-factor(c("Blue","Blue","Green","Red","Green","Yellow"))
fac.vec




#Standalone vectors

class(num.vec1)
class(num.vec2)
class(char.vec)
class(logic.vec)
class(fac.vec)

#Other Data Structures

num.vec1
num.mat1<-matrix(data=num.vec1,nrow=2,ncol=2)
num.mat1
class(num.mat1)

num.vec2
num.mat2<-matrix(data=num.vec2,nrow=2,ncol=3)
num.mat2
class(num.mat2)

char.vec
char.mat<-matrix(data=char.vec,nrow=2,ncol=2)
char.mat
class(char.mat)

logic.vec
logic.mat<-matrix(data=logic.vec,nrow=4,ncol=2)
logic.mat
class(logic.mat)


#Multiple Classes
Certain objects will have multiple classes.
A variant on a standard form of an object such an ordered factor vector, will inherit the usual factor class and also contain the additional ordered class.
Both are returned if you use the class function


ordfac.vec<-factor(x=c("Small","Large","Large","Regular","Small"),levels=c("Small","Regular","Large"),ordered=TRUE)
ordfac.vec

class(ordfac.vec)


#Is-Dot Checking Functions 
To check whether the object is a specific class or data type, you can use the "is-dot function" on the object and it will return TRUE or False logical value.


num.vec1 <-1:4
num.vec1
is.integer(num.vec1)
is.numeric(num.vec1)
is.matrix(num.vec1)
is.data.frame(num.vec1)
is.vector(num.vec1)
is.logical(num.vec1)


#AS-Dot Coercion Functions 

Coercion is the conversion of one data type to another.
Implicit coercion occurs naturally when elements need to be converted to another type in order for an operation to complete.
True or false are implicitly coerced into 1 for true and 0 for false.


1:4+c(T,F,F,T)


#Another example of coercion when you paste and cat to glue together character strings. Non-character strings are automatically coerced into strings before the concatenation takes places. 


foo <-34
bar<-T
paste("Definitely foo:", foo, "; definitely bar: ",bar,".",sep=" ")






  