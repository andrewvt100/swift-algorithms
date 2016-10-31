//
//  binarysearch.swift
//  swift-algorithms
//
//  Created by Andrew van Tonningen on 10/30/16.
//  Copyright © 2016 Andrew van Tonningen. All rights reserved.
//

func binarysearch(array:[Int], target:Int) -> Bool {
    var maxIndex:Int = array.count - 1
    var minIndex:Int = 0
    
    while(maxIndex >= minIndex) {
        let newIndex:Int  = (maxIndex+minIndex) / 2
        if (array[newIndex] > target) {
            maxIndex = newIndex - 1
        }
        else if (array[newIndex] < target) {
            minIndex = newIndex + 1
        }
        else if (array[newIndex] == target){
            return true;
        }
    }
    
    return false
}

func binarySearchDriver() {
    
    print("Binary Search!", terminator: "\n\n")
    let myArray:[Int] = [1,2,3,4,5]
    print(1)
    print(binarysearch(array: myArray, target: 1))
    print(2)
    print(binarysearch(array: myArray, target: 2))
    print(3)
    print(binarysearch(array: myArray, target: 3))
    print(4)
    print(binarysearch(array: myArray, target: 4))
    print(5)
    print(binarysearch(array: myArray, target: 5))
    print(6)
    print(binarysearch(array: myArray, target: 6))
    
}
