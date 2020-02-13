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
    

    func test_searchNumberOnIndexFour_returnsRightIndex() {
        let searcher = BinarySearcher()
        
        XCTAssertEqual(4, searcher.search(for: 7, at: [1, 2, 4, 8, 7]))
    }
}
