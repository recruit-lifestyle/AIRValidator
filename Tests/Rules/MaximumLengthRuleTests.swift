//
//  MaximumLengthRuleTests.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 10/5/15.
//  Copyright © 2015 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import XCTest
@testable import AIRValidator

class MaximumLengthRuleTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testValid() {
        measure {
            let value = "ABCDE"
            switch value.validate([MaximumLengthRule(5)]) {
            case .valid:
                break
            case .invalid(_):
                XCTFail("should be valid")
            }
        }
    }
    
    func testInvalid() {
        measure {
            let value = "ABCDE"
            switch value.validate([MaximumLengthRule(4)]) {
            case .valid:
                XCTFail("should be invalid")
            case .invalid(let rules):
                XCTAssertEqual(rules.count, 1)
                XCTAssertTrue(rules[0] is MaximumLengthRule)
            }
        }
    }
}
