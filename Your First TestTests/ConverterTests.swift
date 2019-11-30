//
//  ConverterTests.swift
//  Your First TestTests
//
//  Created by Michael Grant on 11/29/19.
//  Copyright © 2019 Keepitfreshios. All rights reserved.
//

import XCTest
@testable import Your_First_Test

class ConverterTests: XCTestCase {

    func testFahrenHeitToCelius() {
        
        let sut = Converter()
        
        let input1 = 32.0
        let output1 = sut.convertToCelsius(fahrenheit: input1)
        
        XCTAssertEqual(output1, 0)
        
        let input2 = 212.0
        let output2 = sut.convertToCelsius(fahrenheit: input2)
        XCTAssertEqual(output2, 100)
        
    }
    
    
    
    
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
        
    }

}
