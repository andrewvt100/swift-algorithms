//
//  quicksort.swift
//  swift-algorithms
//
//  Created by Andrew van Tonningen on 10/30/16.
//  Copyright © 2016 Andrew van Tonningen. All rights reserved.
//

func QuickSortRecursion(array:inout [Int], minIndex:Int, maxIndex:Int) {
    
    var indexLeft:Int  = minIndex
    var indexRight:Int = maxIndex
    
    let pivotValue:Int = array[maxIndex]
    
    while (indexLeft <= indexRight) {
        if (array[indexLeft] >= pivotValue) {
            while(indexLeft <= indexRight) {
                if (array[indexRight] <= pivotValue) {
                    let temp:Int = array[indexRight]
                    array[indexRight] = array[indexLeft]
                    array[indexLeft] = temp
                    indexLeft+=1;
                    indexRight-=1;
                    break;
                }
                else {
                    indexRight-=1;
                }
            }
        }
        else {
            indexLeft+=1;
        }
    }
    
    if (indexRight > minIndex) {
        QuickSortRecursion(array: &array, minIndex: minIndex, maxIndex: indexRight)
    }
    
    if (indexLeft < maxIndex) {
        QuickSortRecursion(array: &array, minIndex: indexLeft, maxIndex: maxIndex)
    }
    
}

func QuickSort(array:inout[Int]) {
    QuickSortRecursion(array: &array, minIndex: 0, maxIndex: array.count - 1)
}

func quickSortDriver() {
    print("Quicksort!", terminator: "\n\n")
    var intArray = [10, 12, 13, 17, 6, 5, 15, 3, 1, 16]
    print("Pre-sorted values:")
    for index in intArray {
        print(index, terminator: " ")
    }
    print("\n")
    QuickSort(array: &intArray)
    print("Sorted values:")
    for index in intArray {
        print(index, terminator: " ")
    }
    print("\n")
}



