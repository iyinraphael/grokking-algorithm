import Cocoa

//Binary Search
/*  -It works only on a sorted list
    -It has bigO notation of log2n
    -Binary Search runs Logarithpmic  Time
 */

func binarySearch(_ sortedArray:[Int], item: Int) -> Int? {
    var low = 0
    var high = sortedArray.count - 1
    
    while low <= high{
        let mid = (low + high) / 2
        let guess = sortedArray[mid]
        if guess == item{
            return mid
        }
        if guess > item {
            high = mid - 1
        }
        else{
            low = mid + 1
        }
        
    }
    return nil
}

var my_list = [1, 3, 5, 7, 8, 9]
binarySearch(my_list, item: 8)
binarySearch(my_list, item: -1)

//Big O notaion tells the number of operations an  algoritmn will make
/*
    - Big O is about the worst case scenario
    - Five common Algorithms and their Big O run times
        - O(log n) Binary search
        - O(n) Simple search
        - O(n *logn) Quicksort
        - O(n^2) Selection sort
        - O(n!) traveling saleperson
 */

