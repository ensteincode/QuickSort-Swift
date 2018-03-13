//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func partition(array: inout [Int], startIndex: Int, endIndex: Int) -> Int {
    
    var pivotIndex = startIndex
    let pivot = array[endIndex]
    
    for index in startIndex..<endIndex {
        if (array[index] < pivot) {
            array.swapAt(index, pivotIndex)
            pivotIndex+=1
        }
    }
    array.swapAt(pivotIndex, endIndex)
    return pivotIndex
}

func quickSort(array: inout [Int], startIndex: Int, endIndex: Int) {
    if startIndex < endIndex {
        let pivot  = partition(array: &array, startIndex: startIndex, endIndex: endIndex)
        quickSort(array: &array, startIndex: startIndex, endIndex: pivot-1)
        quickSort(array: &array, startIndex: pivot+1, endIndex: endIndex)
    }
}

var unsorted = [1,2,3,60,8]
quickSort(array: &unsorted, startIndex: 0, endIndex: unsorted.count-1)
