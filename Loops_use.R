###R Program to Find the Factorial of a Number

# Program to find the
# factorial of a number
# provided by the user

# take input from the user
num = as.integer(readline(prompt="Enter a number: "))
factorial = 1

# check is the number is negative, positive or zero
if(num < 0) {
  print("Sorry, factorial does not exist for negative numbers")
} else if(num == 0) {
  print("The factorial of 0 is 1")
} else {
  for(i in 1:num) {
    factorial = factorial*i
  }
  print(paste("The factorial of",num,"is",factorial))
}


##R Program to Check if a Number is Prime

# Program to check if
# the input number is
# prime or not

# take input from the user
num = as.integer(readline(prompt="Enter a number: "))

flag = 0
# prime numbers are greater than 1
if(num > 1) {
  # check for factors
  flag = 1
  for(i in 2:(num-1)) {
    if ((num %% i) == 0) {
      flag = 0
      break
    }
  }
} 

if(num == 2)    flag = 1
if(flag == 1) {
  print(paste(num,"is a prime number"))
} else {
  print(paste(num,"is not a prime number"))
}


####R Program to Find the Fibonacci Sequence

# Program to diplay the fibonacci
# sequence up to n-th tern where
# n is provided by the user

# take input from the user
nterms = as.integer(readline(prompt="How many terms? "))

# first two terms
n1 = 0
n2 = 1
count = 2

# check if the number of terms is valid
if(nterms <= 0) {
  print("Plese enter a positive integer")
} else {
  if(nterms == 1) {
    print("Fibonacci sequence:")
    print(n1)
  } else {
    print("Fibonacci sequence:")
    print(n1)
    print(n2)
    while(count < nterms) {
      nth = n1 + n2
      print(nth)
      # update values
      n1 = n2
      n2 = nth
      count = count + 1
    }
  }
}

####R Program to Check for Leap Year

# Program to check if
# the input year is
# a leap year or not

year = as.integer(readline(prompt="Enter a year: "))
if((year %% 4) == 0) {
  if((year %% 100) == 0) {
    if((year %% 400) == 0) {
      print(paste(year,"is a leap year"))
    } else {
      print(paste(year,"is not a leap year"))
    }
  } else {
    print(paste(year,"is a leap year"))
  }
} else {
  print(paste(year,"is not a leap year"))
  
 #####R Program to check Armstrong Number
  
  # Program to if the
  # number provied by the
  # user is an Armstrong number
  # or not
  
  # take input from the user
  num = as.integer(readline(prompt="Enter a number: "))
  
  # initialize sum
  sum = 0
  
  # find the sum of the cube of each digit
  temp = num
  while(temp > 0) {
    digit = temp %% 10
    sum = sum + (digit ^ 3)
    temp = floor(temp/10)
  }
  
  # display the result
  if(num == sum) {
    print(paste(num,"is an Armstrong number"))
  } else {
    print(paste(num,"is not an Armstrong number"))
  }
  
  
  
  
  



