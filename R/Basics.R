# Take input from the user (name and age) and display the values. Display R version
name <- readline(prompt = "Input name: ")
age <- readline(prompt = "Input age: ")
print(paste("Name:", name))
print(paste("Age:", age))
print(R.version.string)

# Write a R program to get the details of the objects in memory.
name <- "Program"
first_variable <- 10
second_variable <- 1.5
list_of_numbers <- c(10, 20, 30, 40, 50)
# print(ls())
print("Details of objects in memory")
print(ls.str())

# Generate a sequence of numbers from 20 to 50
sequence <- seq(20, 50)
print(sequence)

# Find the mean of the sequence
print(mean(sequence))

# Find the sum of all the numbers in the sequence
print(sum(sequence))

# Generate a list of 10 random numbers between -10 and 10
random_numbers <- sample(-10:10, 10, TRUE)
print(random_numbers)

# Generate the first 10 numbers in the Fibonacci sequence
fibonacci <- numeric(10)
fibonacci[1] <- fibonacci[2] <- 1
for (i in 3:10)
  fibonacci[i] <- fibonacci[i - 1] + fibonacci[i - 2]
print(fibonacci)

# Find the factors of a given number
get_factors <- function(value){
  factors <- c(1)
  for (i in 2:value){
    if ((value %% i) == 0){
      factors <- c(factors, i)
    }
  }
  return(factors)
}
print(get_factors(12))

# Print the first 10 letters of the alphabet
print(head(letters, 10))

# Print the last 5 capital letters of the alphabet
print(tail(LETTERS, 5))

# Print the 20th to 25th capital letters of the alphabet
print(LETTERS[20:25])

# For the first 100 integers, print "Three" if 3 is a factor
# Print "Five" if 5 is a factor
# Print "ThreeFive" if if both 3 and 5 are factors
for (i in 1:100){
  if (i %% 15 == 0)
    print("ThreeFive")
  else if (i %% 5 == 0)
    print("Five")
  else if (i %% 3 == 0)
    print ("Three")
  else
    print(i)
}

# Find the max and min of a vector with 10 random numbers
random_numbers <- sample(1:100, 10, TRUE)
print(min(random_numbers))
print(max(random_numbers))

# Print the unique values in a vector
random_numbers <- sample(1:10, 10, TRUE)
print(unique(random_numbers))

# Create 3 vectors with 3 integers, and combine them into a matrix where
# The vectors are rows
vector_a <- sample(1:10, 3, TRUE)
vector_b <- sample(1:10, 3, TRUE)
vector_c <- sample(1:10, 3, TRUE)
print(rbind(vector_a, vector_b, vector_c))

# The vectors are columns
print(cbind(vector_a, vector_b, vector_c))

# Generate 9 randoms numbers in a vector, and convert it to a 3x3 matrix
random_numbers <- sample(1:10, 9, TRUE)
print(random_numbers)
matrix(random_numbers, 3, 3)
matrix(random_numbers, 3, 3, TRUE)