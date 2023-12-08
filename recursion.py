# Grandma artic box problem

# First approach pseudocode


def look_for_key(main_box):
    pile = main_box.make_a_pile_to_look_through()
    while pile is not empty:
        box = pile.grab_a_box()
        for item in box:
            if item.is_a_box():
                pile.append(item)
            elif item.is_a_key():
                print "found the key!"



# Second approach pseudocode


def look_for_key(box):
    for item in box:
        if item.is_a_box():
            look_for_key(item)
        elif item.is_a_key():
            print "found the key!"


def countdown(i):
    print(i)
    if i <= 1:
        return
    else:
        countdown(i - 1)


def fact(x):
    if x == 1:
        return 1
    else:
        return x * fact(x-1)



# Sum using recursion by applying the Divide and Conquer approach
def _findSum(arr, n):
    if n <= 0:
        return 0
    else:
        return _findSum(arr, n - 1) + arr[n - 1]

def fizzBuzz(n):
    arr = []
    if n <= 1:
        return arr.append(n)
    if n % 5 == 0 & n % 3 == 0:
        arr.append("FizzBuzz")
    elif n % 5 == 0:
        arr.append("Buzz")
    elif n % 3 == 0:
        arr.append("Fizz")
    else:
        arr.append(n)
    return  fizzBuzz(n - 1)


# Given an integer num, return the number of steps to reduce it to zero.
# In one step, if the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.
def subFunc(num):
    if num % 2 == 0:
        div = num / 2
        print("{0} is even; divide by 2 and obtain {1}".format(num, int(div)))
    else:
        sub = num - 1
        print("{0} is odd; substract 1 and obtain {1}".format(num, int(sub)))


def numbersOfStepsRecursive(num):
    if == 0:
        return
    else:
        subFunc(num)
        return numbersOfStepsRecursive(num - 1)

