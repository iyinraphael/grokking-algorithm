import Foundation

//LinkedList and Array: you know the address of elements in an array so it's easy to read but not a linkedlist

//SELECTION SORT

func findSmallest(_ arr: [Int]) -> Int {
    var smallest = arr[0] /* stores the smallest value*/
    var smallest_index = 0 /* stores the index of the smallest value*/
    let len = arr.count - 1
    
    for index in 1...len {
        if arr[index] < smallest {
            smallest = arr[index]
            smallest_index = index
        }
    }
    return smallest_index
}

func selectionSort(_ arr:[Int] ) -> [Int] {
    var newArr = [Int]()
    var new = arr
    
    for _ in 0...arr.count - 1 {
        let smallest = findSmallest(new)
        newArr.append(new.remove(at: smallest))
    }
    return newArr
}

var numbers = [5, 3, 6, 2, 10]

func newSelectionSort(_ array: inout [Int]){
    
    for current in 0..<(array.count - 1) {
        var lowest = current
        
        for other in (current + 1)..<array.count {
            if array[lowest] > array[other] {
                lowest = other
            }
        }
        if lowest != current {
            array.swapAt(lowest, current)
        }
        
    }
}
newSelectionSort(&numbers)

//Bubble Sort

func bubbleSort(_ array: inout [Int]) {
    guard array.count >= 2 else {return}
    
    for end in (1..<array.count).reversed() {
        var swapped = false
        
        for current in 0..<end {
            if array[current] > array[current + 1] {
                array.swapAt(current, current + 1)
                swapped = true
            }
            if !swapped {return}
        }
    }
}

bubbleSort(&numbers)

//for end in (1..<numbers.count).reversed() {
//    print(end)
//}

func isAnagram(_ s: inout String, _ t: inout String) -> Bool {
    
    var arr = [String]()
    let count = s.count
    
    for str in s {
        for st in t {
            if str == st {
                let index = t.firstIndex(of: st)!
                arr.append(String(t.remove(at: index)))
            }
        }
    }
    if count == arr.count {
        return true
    }
    
    return false
}
var s = "aacc"
var t = "ccac"

isAnagram(&s, &t)

func mearge
