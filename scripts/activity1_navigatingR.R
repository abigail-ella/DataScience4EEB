##
##
##    Activity #1: Navigating R
##
##    Objective:   Become familiar with how to navigate RStudio, use different types
##                 of data objects (e.g. numbers, vectors), 
##                
##    Author(s):   Calvin, Malin
##
##    Date:        Jan. 5th, 2026
##
##
##



# 1. How to write, run, and save code -------------------------------------
#
#

# This is your workspace! Here you can write code, comments, etc, and save it
# for later

# Comments are an excellent way to keep track of your work and record what you
# were thinking when writing that line of code. Describing your approach also
# helps other people to understand your thought process, helping replicate your
# results. To record a comment, simply put a "#" before a line. This tells R that
# anything coming after this symbol is not code.


# To execute a line of code, you can either click the "Run" button in the top
# right, or as a hand shortcup, "Command + Return" for Mac users or "Control +
# Enter" for PC
  
# To add another, line simply press "Enter" or "Return"

# * Q1 ------------------------------------------------------------------


# Try writing a sentence without the pound sign; R will think that this is a
# line of code! Note that a red x appears to the left of the line number, and
# the words get underlined in red. Hover of the red x as well. R is giving you a
# sign that something is wrong! Next, put a pound sign in front of the sentence
# to make it a comment



# 2. Numbers in R -------------------------------------


# I like to think of R as a calculator with a TON of features. For instance,
# what happens when you add two numbers together in your code?

# Addition
3 + 2

# Subtraction
5 - 2

# Multiplication
3*9

# Division
8/2

# Use parenthesis just as you would when performing mathematical equations:
(3 + 19)/(3^2 + 2)

# Each open parenthesis must also have a closing parenthesis in order for the
# code to run!

# You can highlight and then click the run code or command + enter to run
# specific parts of an equation


# * Q2 ------------------------------------------------------------------

# Add together 5 and 15, then divide that by 4




# 3. Data objects ---------------------------------------------------------

# A key concept in R is how to store data into "data objects". This can be
# accomplished using the "<-" or the "=" operators as below

# The line below will store 5 into x. Note how this now appears in the top right
# "Environment" pane
x <- 5
# or
x = 5

# Now run this below line of code that contains x. What does it spit out into
# the bottom left "Console"? It spits out a 5 as output - this tells you that R
# now understands an x to be equal to 5
x

# Now we define y as 10. y joins x in the Environment panel.
y <- 10

# Look what happens when we add together x and y: the output is 15. R treated x
# as 5 and y as 10
x + y

# We can then store this new output (15) as z. You will see how this can be
# useful further below!
z <- x + y

# Check that z is now 15
z

# This storage of values as data objects can be particularly helpful if we have
# a value that occurs multiple times in our code.

# Say we went on a road trip and wanted to calculate your average speed, as well
# as the gas you used. The trip took 15 hours, and you traveled 1000 miles. Your
# nifty hybrid car gets 80 miles to the gallon (mpg), and gas costs $3.00 per
# gallon

# Let's store these values as data objects. 
# Note: a data object can be any combination of letters, numbers (though they
# can't begin with numbers), "_", and ".". No special characters, as these have
# other meanings to R!
miles <- 1000
hours <- 15
mpg <- 80
cost_of_gas_per_gal <- 3.00

# What was your average speed (mph) throughout the trip? We can divide miles by
# hours and then store the output as mph
mph <- miles/hours
mph

# You can use raw numbers to perform operations on the data objects that
# represent numbers too! Convert miles per hour to kilometers per hour
mph*1.6

# How many gallons of gas did you consume?
gallons <- miles/mpg
gallons

# How much will that trip cost you in terms of gas?
total_cost <- gallons*cost_of_gas_per_gal
total_cost

# * Q3: Gas mileage ---------------------------------------------------

# Let's take advantage of R's ability to store data into objects and change the
# initial parameters. How much will you pay for gas (total_cost) if you instead:
# take a truck that gets 20 mpg and you live in CA, so the cost of gas is 4.50?
# Copy/paste the code above to here, with those noted modifications. How much
# will you spend in gas?



# Important note: Notice that when you change the initial values of the data
# objects and rerun the code, this overrides the old values! This is very
# imporant to keep in mind: depending on which lines you ran last, the numeric
# value stored in gallons, for instance, will change! It is usually best
# practice to name data objects different things (e.g. gallons_electric and
# gallons_truck) to avoid mistakes.

# Easy-to-make error: What happens if you spell something wrong? Or capitalize
# something accidentally? R will only recognize perfect matches when it comes to
# data objects or character input. What happens if you run the below two lines that
# LOOK like "total_cost"? R says: "Error: object 'totalcost' not found". This is
# an important hint that you haven't stored any data in those objects (and thus
# may have spelled something wrong)

totalcost
Total_cost


# 4. Characters in R -------------------------------------------------------

# So those were numbers, but how do we deal with characters in R? This is
# particularly helpful when thinking about non-numeric data. For instance, if we
# want to understand how gas mileage changes with car manufacturer, then we have
# a mix of numbers (gas mileage) and characters (manufacturers). We'll get more
# into this sort of question later when we start working with data tables and
# data analysis.

# To designate something as characters, rather than as a number or data object,
# surround it in quotations

# This first line of code outputs just the word "gallons", whereas the following
# line outputs what we stored earlier as a data object.
"gallons"
gallons
# This is an important distinction! Without the quotation marks, gallons is
# simply a placeholder for the value we assigned it earlier. With the quotation
# marks, it is read as a group of characters, even if you put numbers in it


# * Q4. -------------------------------------------------------------------

# Add 2 and 2 together in R, but with one of the twos surrounded by quotation
# marks. What does the error message say?



# 5. Vectors -----------------------------------------------------------

# You can string together various data elements (e.g. numbers, characters) to
# create "vectors" of data. This is accomplished using the c() function (more on
# functions in a second). To create a vector of characters, string together the
# elements (in this case, names) using commas.
names <- c("Calvin", "Malin", "SammySlug", "Calvin")
names

# Note how "names" is now in our Environment too, this time with an abbreviation
# "chr" and a [1:4]. This is a vector!
# chr stands for character, indicating that the elements in the vector are
# characters (as opposed to something like numbers). The [1:4] indicates that
# the elements go from 1 to 4 (the ":" tells R to go from every number between
# the two listed numbers. In this case, it's 1, 2, 3, and 4).


# * Q5 --------------------------------------------------------------------

# Create a vector of the last 3-6 vegetables you bought at a grocery store. Name the
# data object in which you store the vector "veggies"


# 6. Functions pt 1 ------------------------------------------------------------

# R has a wide range of built-in functions, which are pre-written bits of code
# that take some sort of input, do something with it, and then produce an output.

# Functions always have the same structure: a function name, parentheses, and
# the input(s) which are known as "arguments".

# In this case, our vector called names will be the "argument" to the function
# unique().

# Every function has a built-in "Help" page in R! It pops up in the bottom right
# pane. One way to access the help page is: In a line of code, just type a ? or
# ?? before the function:
?unique()

# The unique() function tells us how many unique values are present in a vector (or data
# frame). Look at the values in the names vector, then look at the values that
# the function unique() spits out as output once we plug in the names vector
names
unique(names)
# We have 4 total values, but only 3 unique ones!



# * Q6 --------------------------------------------------------------------

# The function length() tells you the length of a vector (aka how many "things"
# are in it). Take this function and apply it to the names vector. How many
# values are present in the vector?



# 7. Functions pt 2 --------------------------------------------------------

# Let's use some more functions, but this time, with numeric vectors. This
# vector of numbers represent the grades from four exams.
grades <- c(88, 92, 99, 89)
grades

# Now it's time to make R do some math! Run this vector through the mean(),
# max(), min(), and sum() functions by running the following lines of code.
mean(grades) # Calculates the average of the numbers
max(grades) # Calculates the largest number
min(grades) # Calculates the smallest number
sum(grades) # Adds up all of the numbers 


# * Q7 --------------------------------------------------------------------

# Things can be done multiple ways in R. Let's say that you are keeping track of
# your expenses on groceries each week. Each number represents the money you
# spent at Trader Joes for 5 consecutive weeks, and you spent 40, 50, 90, 35,
# and 63 dollars. 
# 1) Create a vector of these expenses named "groceries", and 
# 2) Code TWO ways that you can calculate the average amount of money you've
# spent per week. (Remember what the equation for calculating an average is?)





# 8. Navigating error messages ------------------------------------------

# Error messages are a constant companion in R - they will never go away! Just a
# couple common errors are:
# - forgetting to add commas, closed parenthesis, or quotation marks,
# - misspelling the names of variables or functions
# The good news is that RStudio has an incredible online presence - if you run
# into a problem with your code, chances are that someone else has too, and the
# solution is online! StackOverflow, the CRAN website (R's website), and other
# sites host all sorts of questions/answers/discussions regarding R code. The
# built-in R help page is also very useful. And if you want to do a specific
# thing in R (e.g. make a certain graph, run a certain analysis), googling it
# will almost always yield example code that you can modify to accomplish your
# goal! Just copy/paste your error messages into Google - it will help!

# Run the following lines of code and pay attention to the error messages. See
# if you can tell what's wrong
summ(grades)
mean(Groceries)
c("Calvin", "Malin," "SammySlug")


# * Q8 --------------------------------------------------------------------

# Let's say that you are trying to add together the grades of 5 exams, one of
# which hasn't been taken yet, so its value is NA. Use the built-in help
# capabilities of RStudio to figure out what you should do with the na.rm
# argument of the sum() function in order to properly add together the 4 non-NA
# values. Should the argument be TRUE or FALSE? Write your answer below.






