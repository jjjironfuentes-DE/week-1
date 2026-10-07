##1. Write a Python program that asks the user for their name, age, and city, then displays the information in a meaningful sentence.

name = input("What is your name? ")
age = input("How old are you? ")
city = input("What city do you live in? ")

print(f"Hello! My name is {name}, I am {age} years old and I live in {city}.")

#2. Write a program that asks the user for two numbers and displays their addition, subtraction, multiplication, 
# and division.



num1 = float(input("Enter the first number: "))
num2 = float(input("Enter the second number: "))  

print(f"Addition: {num1 + num2}")
print(f"Subtraction: {num1 - num2}")
print(f"Multiplication: {num1 * num2}")
print(f"Division: {num1 / num2}")

##3. Write a program to calculate the area of a rectangle. Ask the user to enter the length and width.

length = float(input("Enter the length of the rectangle: "))
width = float(input("Enter the width of the rectangle: "))
area = length * width
print(f"The area of the rectangle is: {area}")

##4. Write a program that accepts a temperature in Celsius and converts it to Fahrenheit.

celsius = float(input("Enter temperature in Celsius: "))
fahrenheit = (celsius * 9/5) + 32
print(f"{celsius}°C is equal to {fahrenheit}°F")

##5. Write a program that asks the user for a number and determines whether it is positive, negative, or zero.

number = float(input("Enter a number: "))
if number > 0:
    print("The number is positive.")
elif number < 0:
    print("The number is negative.")
else:
    print("The number is zero.") 

## 6. Write a program that asks the user for a number and determines whether it is even or odd.

number = int(input("Enter a number: "))

if number % 2 == 0:
    print(f"{number} is even.")
else:
    print(f"{number} is odd.")


    
    ## 7. Write a program that asks for a person's age and determines whether they are a child, teenager, or adult.
    
age = int(input("Enter your age: "))
if age < 13:
    print("You are a child.")
elif 13 <= age < 20:
    print("You are a teenager.")
else:
    print("You are an adult.")
    
    ## 8. Write a program that accepts marks from 0 to 100 and displays the appropriate grade
    
#90–100 → A 
#80–89 → B 
#70–79 → C 
#60–69 → D 
#Below 60 → F 

marks = float(input("Enter your marks (0-100): "))
if 90 <= marks <= 100:
    print("Your grade is A.")
elif 80 <= marks < 90:
    print("Your grade is B.")
elif 70 <= marks < 80:
    print("Your grade is C.")
elif 60 <= marks < 70:
    print("Your grade is D.")
else:
    print("Your grade is F.")
    
    ## 9. Write a program that asks for three numbers and finds the largest number.
    
num1 = float(input("Enter the first number: "))
num2 = float(input("Enter the second number: "))
num3 = float(input("Enter the third number: "))

if num1 >= num2 and num1 >= num3:
    largest = num1
elif num2 >= num1 and num2 >= num3:
    largest = num2
else:
    largest = num3

print("The largest number is:", largest)


## 10. Write a simple calculator. Ask the user for two numbers and an operator (+, -, *, /) and perform the selected 
# calculation.

num1 = float(input("Enter the first number: "))
num2 = float(input("Enter the second number: "))
operator = input("Enter an operator (+, -, *, /): ")

if operator == "+":
    result = num1 + num2
elif operator == "-":
    result = num1 - num2
elif operator == "*":
    result = num1 * num2
elif operator == "/":
    if num2 == 0:
        result = "Error: cannot divide by zero."
    else:
        result = num1 / num2
else:
    result = "Invalid operator."

print("Result:", result)


## 11. Write a program using a for loop to print numbers from 1 to 20.

for i in range(1, 21):
    print(i)

## 12. Write a program to print all even numbers between 1 and 50.

for i in range(1, 51):
    if i % 2 == 0:
        print(i)    
        
## 13. Write a program to print all numbers between 1 and 100 that are divisible by both 3 and 5.

for i in range(1, 101):
    if i % 3 == 0 and i % 5 == 0:
        print(i)   
        
##  14. Write a program to display the multiplication table of a number entered by the user.

number = int(input("Enter a number to display its multiplication table: "))
for i in range(1, 11):
    print(f"{number} x {i} = {number * i}")
    
## 15. Write a program to calculate the sum of all numbers from 1 to 100 using a for loop.

total = 0

for number in range(1, 101):
    total += number

print("The sum of numbers from 1 to 100 is:", total)

## 16. Write a program to count how many even numbers exist between 1 and 100.

count = 0

for number in range(1, 101):
    if number % 2 == 0:
        count += 1

print("Even numbers between 1 and 100:", count)


## 17. Given the following list:

numbers = [12, 45, 7, 89, 23, 56, 34, 91, 10]
#Use a for loop to print:
#All even numbers 
#All odd numbers 
#All numbers greater than 50 


for number in numbers:
    if number % 2 == 0:
        print(number, "is even.")

for number in numbers:
    if number % 2 != 0:
        print(number, "is odd.")

for number in numbers:
    if number > 50:
        print(number, "is greater than 50.")

## 18. Given a list of numbers, calculate the total without using the built-in sum() function.

numbers = [4, 8, 15, 16, 23, 42]

total = 0
i = 0
while i < len(numbers):
    total += numbers[i]
    i += 1

print("The total is:", total)

## 19. Given a list of numbers, find the largest number without using the built-in max() function.

numbers = [4, 8, 15, 16, 23, 42]
largest = numbers[0]

for number in numbers:
    if number > largest:
        largest = number

print("The largest number is:", largest)


## 20. Given a list of student marks, use a loop to count how many students passed and how many failed. 
# A mark of 40 or above is considered a pass.

marks = [55, 23, 67, 45, 12, 89, 34, 76, 38, 90]
pass_count = 0
fail_count = 0 

for mark in marks:
    if mark >= 40:
        pass_count += 1
    else:
        fail_count += 1

print("Number of students who passed:", pass_count)
print("Number of students who failed:", fail_count)

## 21. Write a function greet_user(name) that accepts a person's name and returns a greeting message.

def greet_user(name):
    return f"Hello, {name}! Welcome."

user_name = input("What is your name? ")
print(greet_user(user_name))

## 22. Write a function check_even_odd(number) that accepts a number and returns "Even" or "Odd".

def check_even_odd(number):
    if number % 2 == 0:
        return "Even"
    else:
        return "Odd"
    
## 23. Write a function calculate_sum(n) that uses a loop to calculate and return the sum of numbers from 1 to n.
    
def calculate_sum(n):
    total = 0
    for i in range(1, n + 1):
        total += i
    return total

## 24. Write a function count_greater(numbers, value) that accepts a list of numbers and a value, and returns how
# many numbers in the list are greater than that value.

def count_greater(numbers, value):
    count = 0
    for number in numbers:
        if number > value:
            count += 1
    return count

print(count_greater([3, 8, 12, 5, 20], 7))

## 25. Write a function called analyze_numbers(numbers) that accepts a list of numbers and calculates:
#Total number of values 
#Sum of the values Average 

def analyze_numbers(numbers):
    count = 0
    total = 0

    for number in numbers:
        count += 1
        total += number

    if count == 0:
        return 0, 0, 0 

    average = total / count
    return count, total, average

values = [10, 20, 30, 40, 50]
count, total, average = analyze_numbers(values)

print("Total number of values:", count)
print("Sum of the values:", total)
print("Average:", average)

