# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(word1, word2) {
  difference <- abs(nchar(word1) - nchar(word2)) # Finds difference of 2 characters
  min_length <- min(nchar(word1), nchar(word2)); # Finds the numerical value of smallest string
  difference >= min_length # States if the difference is greater than the minimum.
} 

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("kiwi", "watermelon")
is_twice_as_long("watermelon", "kiwi")
is_twice_as_long("acai", "kiwi")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(word1, word2) {
  diff <- nchar(word1) - nchar(word2)
  if(diff > 0) {
    sentence <- paste("Your first string is longer by", diff, "characters")
  } else if(diff < 0) {
    sentence <- paste("Your second string is longer by", -diff, "characters")
  } else {
    sentence <- "Your strings are the same length!"
  }
  sentence
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("kiwi", "watermelon")
describe_difference("watermelon", "kiwi")
describe_difference("acai", "kiwi")
