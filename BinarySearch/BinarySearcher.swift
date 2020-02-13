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
        if let index = at.firstIndex(of: number) {
            return index
        }
        throw NumberNotFoundError.numberNotFound
    }
    
}
