//
//  main.swift
//  QuickSort
//
//  Created by Ensteincode on 06/03/18.
//

import Foundation

print("Demonstration of Quick Sort")

func partition<T:Comparable>(array: inout [T], startIndex: Int, endIndex: Int) -> Int {
    
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

func quickSort<T:Comparable>(array: inout [T], startIndex: Int, endIndex: Int) {
    if startIndex < endIndex {
        let pivot  = partition(array: &array, startIndex: startIndex, endIndex: endIndex)
        quickSort(array: &array, startIndex: startIndex, endIndex: pivot-1)
        quickSort(array: &array, startIndex: pivot+1, endIndex: endIndex)
    }
}

var unsorted:[Float] = [1,2,3,60,1,8]
quickSort(array: &unsorted, startIndex: 0, endIndex: unsorted.count-1)
print(unsorted)
