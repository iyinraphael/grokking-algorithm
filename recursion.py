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