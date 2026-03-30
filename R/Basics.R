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