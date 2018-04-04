# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string

is_twice_as_long <- function(first_string, second_string) {
  minimum_length <- min(nchar(first_string), nchar(second_string))
  maximum_length <- max(nchar(first_string), nchar(second_string))
  same_length <- maximum_length >= (2 * minimum_length)
  return(same_length)
}


# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!

first <- "Hello"
second <- "ljljklklkl"
test <- is_twice_as_long(first, second)
first_test <- "Bonjour"
second_test <- "Hi"
test2 <- is_twice_as_long(first_test, second_test)


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"

describe_difference <- function(first_string, second_string) {
  difference = nchar(first_string) - nchar(second_string)
  if (difference > 0) {
    status = paste("Your first string is longer by", difference, "characters")
  } else if (difference < 0) {
    status = paste("Your second string is longer by", -difference, "characters")
  } else {
    status = "Your strings are the same length!"
  }
  return(status)
}


# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

test3 <- describe_difference("Kelly", "Spagh")
test4 <- describe_difference("Spaghetti", "Kelly")
test5 <- describe_difference("Kelly", "Spaghetti")
