//
//  RequiredRuleTests.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 8/31/15.
//  Copyright © 2015 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import XCTest
@testable import AIRValidator

class RequiredRuleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testThatAnEmptyStringThrowsError() {
        let value = ""
        switch value.validate([RequiredRule()]) {
        case .Valid:
            XCTFail("Should be invalid")
        case .Invalid(let rules):
            XCTAssert(rules.count == 1)
            XCTAssert(rules[0] is RequiredRule)
        }
    }

    func testThatNonEmptyStringDoesNotThrowError() {
        let value = "valid string"
        switch value.validate([RequiredRule()]) {
        case .Valid:
            XCTAssert(true)
        case .Invalid(_):
            XCTFail("Should be valid")
        }
    }
    
    func testThatIntegerThrowsError() {
        let value = 1
        switch value.validate([RequiredRule()]) {
        case .Valid:
            XCTFail("Should be invalid")
        case .Invalid(let rules):
            XCTAssert(rules.count == 1)
            XCTAssert(rules[0] is RequiredRule)
        }
    }
}
