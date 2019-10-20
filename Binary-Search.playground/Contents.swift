import Cocoa

//Binary Search
/*  -It works only on a sorted list
    -It has bigO notation of log2n

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

var my_list = [1, 3, 5, 7, 9]
binarySearch(my_list, item: 3)
binarySearch(my_list, item: -1)
