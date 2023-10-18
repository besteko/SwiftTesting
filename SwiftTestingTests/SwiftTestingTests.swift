//
//  SwiftTestingTests.swift
//  SwiftTestingTests
//
//  Created by Beste Kocaoglu on 15.10.2023.
//

import XCTest
@testable import SwiftTesting

final class SwiftTestingTests: XCTestCase {


    let math = MathematicFunctions()
    
    func testAddIntegerFunction() {
        let result = math.addIntegers(x: 5, y: 8)
        
        XCTAssertEqual(result, 13)
    }
    
    func testDividedFunction() {
        let result = math.dividedIntegers(x: 36, y: 4)
        
        XCTAssertEqual(result, 9)
    }
    
    func testMultiplyFunction() {
        let result = math.multiplyNumbers(x: 5, y: 7)
        
        XCTAssertEqual(result, 35)
    }

}
