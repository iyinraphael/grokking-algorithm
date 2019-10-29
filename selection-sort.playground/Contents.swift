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

let numbers = [5, 3, 6, 2, 10]

selectionSort(numbers)
