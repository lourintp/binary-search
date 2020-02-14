//
//  BinarySearcher.swift
//  BinarySearch
//
//  Created by Thiago Lourin on 13/02/20.
//  Copyright © 2020 Lourin. All rights reserved.
//

import Foundation

enum NumberNotFoundError: Error {
    case numberNotFound
}

struct BinarySearcher {
    
    func search(for number: Int, at: [Int]) throws  -> Int {
        
        let minimumIndex = 0
        let maximumIndex = at.count - 1
        let middleIndex = maximumIndex/2
        let middleValue = at[middleIndex]
        
        if (number < at[minimumIndex] || number > at[maximumIndex]) {
            throw NumberNotFoundError.numberNotFound
        }
        
        if (number > middleValue) {
            let slice = Array(at[minimumIndex + 1...maximumIndex])
            return try search(for: number, at: slice)
        }
        
        if (number < middleValue) {
            let slice = Array(at[minimumIndex...middleIndex - 1])
            return try search(for: number, at: slice)
        }
        
        if (number == middleValue) {
            return number
        }
        
        throw NumberNotFoundError.numberNotFound
    }
    
    func search<T: Comparable>(array: [T], key: T, range: Range<Int>) -> Int? {        
        guard range.startIndex < range.endIndex else {
            return nil
        }
                
        let midIndex = range.startIndex + (range.endIndex - range.startIndex) / 2
        
        if array[midIndex] > key {
            return search(array: array, key: key, range: range.startIndex ..< midIndex)
        } else if array[midIndex] < key {
            return search(array: array, key: key, range: midIndex + 1 ..< range.endIndex)
        } else {
            return midIndex
        }
    }
}
