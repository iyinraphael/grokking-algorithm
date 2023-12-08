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