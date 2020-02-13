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
        do {
            let index = try BinarySearcher().search(for: 7, at: [1, 2, 4, 8, 7])
            XCTAssertEqual(4, index)
        } catch {
            
        }
    }
    
    func test_searchForANumberThatIsNotInArray_throwsException() {
        XCTAssertThrowsError(try BinarySearcher().search(for: 2, at: [1, 3, 4]))
    }
}
