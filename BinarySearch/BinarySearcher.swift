//
//  BinarySearcher.swift
//  BinarySearch
//
//  Created by Thiago Lourin on 13/02/20.
//  Copyright © 2020 Lourin. All rights reserved.
//

import Foundation

struct BinarySearcher {
    
    func search(for number: Int, at: [Int]) -> Int {
        if let index = at.firstIndex(of: number) {
            return index
        }
        fatalError("Number not found on array.")
    }
    
}
