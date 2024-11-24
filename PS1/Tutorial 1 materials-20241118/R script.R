# title: Tutorial 1: Introduction to R and RStudio. R script
# author: Daria Kuznetsova


# this file is called R script. It is a text file that allows you to save 
# your code and make your work and your research reproducible. R script files
# have an extension .r or .R

# to make comments in R script, you need to start a line with #, as you probably 
# already noticed. 

# let's do some coding!

# R is a fancy calculator

2+2

2+2^2 # ^ is called the caret and signifies exponentiation where the usual 
      # superscript is unavailable

(2+2)^2 # using parentheses is a good practice 

(10-8)*10 # * the asterisk signifies multiplication

(10-8)/2 # / the slash (forward slash) signifies division


# R can also do a lot of other things beyond simple calculations. For example, 
# we can create a vector of numbers

c(1, 3, 5, 65, 86, 9)
my_numbers <- c(1, 3, 5, 3, 2, 25, 7)

# The command c() is a function. "C" is short for “combine” or “concatenate”.

# I just assigned values to an object my_numbers
# Always use Option+minus on MacOS or Alt+minus on Windows to type the 
# assignment operator. Make it you favorite shortcut!

my_numbers <- c(1, 3, 5, 3, 2, 25, 7)

My_numbers # R is case sensitive, we do not have an object My_numbers

# However, this should work
my_numbers # and should return the object my_numbers with values I assigned

# functions: they take an input (or multiple inputs) and produce an output. 
# Let's calculate a mean value of my numbers
mean()
mean(x = my_numbers)
# how to read docuemntation
?mean

# strictly speaking, we do not need to specify x, the argument.
mean(my_numbers) # will also work

# or we can assign the mean value to ab object
mean <- mean(my_numbers)
mean

# more on functions. We can ask R to find a median value from my numbers
median(my_numbers)
summary(my_numbers)

table(my_numbers)
sd(my_numbers)

# we can also do manipulation with objects
my_numbers * 5 # multiply each value by 5 in my_numbers
my_numbers + 1 # add 1 to each value in my_numbers
my_numbers + my_numbers # add each value in my_numbers to itself

# this is called a vectorized operation.

# Each object has a class. Often is it important to know what class an object is
# to know what operations we can do with that object
class(mean)
class(my_numbers)
class(sd)

# A class of an object can change
my_new_numbers <- c(my_numbers, "apple")
my_new_numbers

class(my_new_numbers)
# Adding "apple" to our vector turned the numeric my_numbers object into a
# character string, a textual type of data. 

# a lot of useful R functions are bundled in libraries that you can install 
# and load into R to use
# we will wok with tydiverse library and ggplot2 library 
# ggplot is a part of tydiverse library, it is a library of functions.
# to install a library you should use function install.packages()

install.packages("tidyverse")

# you only need to install a package once. 
# you need to load a library every time you launch R and want to use its functions

library(tidyverse)

# next: RMarkdown