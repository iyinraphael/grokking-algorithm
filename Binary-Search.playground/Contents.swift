import Cocoa

//Binary Search
/*  -It works only on a sorted list
    -It has bigO notation of log2n
    -Binary Search runs Logarithpmic  Time
 */

func binarySearch(_ sortedArray:[Int], item: Int) -> Int? {
    var low = 0
    var high = sortedArray.count - 1
    var new = 0
    
    while low <= high{
        let mid = (low + high) / 2
        let guess = sortedArray[mid]
        if guess == item{
            return mid
        }
        if guess > item {
            high = mid - 1
            new = mid
        }
        else{
            low = mid + 1
            new = mid + 1
        }
        
    }
    
    return new
}

var my_list = [1, 3, 5, 7]
binarySearch(my_list, item: 2)
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


func mySqrt(_ x: Int) -> Int {
    
    var low = 0
    var high = x
    var root = 0
    
    while low <= high {
        let mid = (low + high) / 2
        
        if mid * mid == high {
            return mid
        }
        if mid * mid > x {
            high = mid - 1
        }
        else {
            low = mid + 1
            root = mid
        }
    }
    
    return root
}

mySqrt(10)

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var low = 0
    var high = numbers.count - 1
    var index = [Int]()
    var count = 1
    var newNum = 0
    
        while low <= high {
            let mid = (low + high) / 2
            let guess = numbers[mid]
            
            for num in numbers{
                newNum = num
                print("\(guess + num)")
                
                if guess + num == target {
                    index.append(count)
                    index.append(mid + 1)
                    return index
                }
                
                if guess + newNum > target {
                    high = mid - 1
                }
                else {
                    low = mid + 1
                }
                
                count += 1
            }
        
        }
    
    return index
    
}

var  numbers = [5,25,75]
  

twoSum(numbers, 6)

func twoSimpleSum(_ numbers: [Int], _ target: Int) -> [Int]? {
    
    var count = 0
    var len  = numbers.count - 1
    var index = [Int]()
    
    while count < len {
        let sum = numbers[count] + numbers[len]
        if sum == target {
            index.append(count)
            index.append(len)
            return index
        
        } else if sum < target {
            count += 1
        } else {
            len -= 1
        }
    }
    return nil
}

twoSimpleSum(numbers, 100)
