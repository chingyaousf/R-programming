#S3
#Create an object from a list; list is simple to use.
p <- list(vocation = "self_employed", age = 40, income = 77000)
class(p)<- "premium"
p

#Give more information of the structure of the object.
class("premium")
class(p)
attr(p,"class")
attributes(p)

#Show the types of object.
typeof(p)
otype(p)
isS4(p)
mode(p)


#Using constructor to create an Object with "function".
#Showing if "self_employed" and income >= 70000, print "Low risk".
premium = function(v,a,i) {if(v == "self_employed" && i>= 70000) print("Low risk")
  value  = list(vocation = v, age = a, income = i)
  attr(value,"class") = "Premium"
  value
}
#call the premium() function with the arguments "self_employed", 30, and 70000,
#and assign the returned value to the variable "p".
p <- premium("self_employed", 30, 70000)

##Using constructor to create an Object with "function" &
#Create "generic function" "Risk" using "UseMethod()" the dispatcher function 
#which will handle all the background details.It is simple to implement a generic function.  
premium <- function(vocation, age, income) {
  value <- list(v= vocation, a= age, i= income)
  class(value) <- "premium"
  return(value)
}

Risk <- function(obj) { 
  if (class(obj) != "premium") {
    stop("Input object is not of class 'premium'")
  }
  if (obj$v == "self_employed" && obj$i >= 70000) {
    return("Low risk")
  } else if (obj$v == "employee" && obj$i >= 60000 && obj$a >= 40) {
    return("Low risk")
  } else {
    return("high risk")
  }
  {UseMethod("Risk")}
}

#Apply "generic function" "Risk".
p <- premium("employee", 40, 55000)
Risk(p)

#Call values from that object.
p$v
p$a
p$i

#S4
#S4 class is defined using the "setClass()".
setClass("premium",
    representation(
    vocation = "character",
    age = "numeric",
    income = "numeric"
    ))

#Using "setMethod()" constructor to "Implement" an "generic function" "show()".
setMethod("show", "premium",
          function(object) {
            if (object@vocation == "self_employed" && object@income >= 70000) {
              print("Low risk")
            }
            object
          })

#Using "setGeneric()" to "Declare" an "generic function" "show()".
setGeneric("show")

#create an object using "new()" function and apply to "show()" generic function above
p <- new("premium", vocation = "self_employed", age = 30, income = 70000)
p

#Give more information of the structure of the object.
class("premium")
class(p)
attr(p,"class")
attributes(p)

#Show the types of object.
typeof(p)
otype(p)
isS4(p)
mode(p)


#Call values from that object.
p@vocation
p@age
p@income

