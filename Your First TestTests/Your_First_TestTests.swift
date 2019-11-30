//
//  Your_First_TestTests.swift
//  Your First TestTests
//
//  Created by Michael Grant on 11/26/19.
//  Copyright © 2019 Keepitfreshios. All rights reserved.
//

import XCTest
@testable import Your_First_Test

class Your_First_TestTests: XCTestCase {

    
    func testHaterStartsNicely() {
        
        let hater = Hater()
        
        XCTAssertFalse(hater.hating)
    }
    
    func testHaterHatesAfterABadDay() {
        
        var hater = Hater()
        
        hater.hadABadDay()
        
        XCTAssertTrue(hater.hating)
    }
    
    func testHaterHatesAfterAGoodDay() {
        
        var hater = Hater()
        
        hater.hadAGoodDay()
        
        XCTAssertFalse(hater.hating)
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
