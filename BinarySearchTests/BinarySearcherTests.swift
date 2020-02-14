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
            
    func test_searchNumber_returnsRightNumber() {
        do {
            let number = try BinarySearcher().search(for: 32, at: [1, 2, 4, 8, 9, 10, 32])
            XCTAssertEqual(32, number)
        } catch {
            
        }
    }
    
    func test_searchForANumberThatIsNotInArray_throwsException() {
        XCTAssertThrowsError(try BinarySearcher().search(for: 2, at: [1, 3, 4]))
    }
    
    func test_searchNumberOnIndexFour_returnsIndexFour() {
        let arrayOfIntegers = [1, 2, 4, 8, 9, 10, 32]
        let index = BinarySearcher().search(array: arrayOfIntegers, key: 9, range: 0..<arrayOfIntegers.count)
        
        XCTAssertEqual(4, index)
    }
    
    func test_searchForNumberThatIsNotInArray_returnsNil() {
        let arrayOfIntegers = [1, 2, 4, 8, 9, 10, 32]
        let index = BinarySearcher().search(array: arrayOfIntegers, key: 7, range: 0..<arrayOfIntegers.count)
        
        XCTAssertNil(index)
    }
}
