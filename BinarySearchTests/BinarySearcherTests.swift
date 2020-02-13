//
//  BinarySearcherTests.swift
//  BinarySearchTests
//
//  Created by Thiago Lourin on 13/02/20.
//  Copyright © 2020 Lourin. All rights reserved.
//

import XCTest
@testable import BinarySearch

class BinarySearcherTests: XCTestCase {
    

    func testExample() {
        let searcher = BinarySearcher()
        
        XCTAssertEqual(0, searcher.search(for: 7))
    }
}
