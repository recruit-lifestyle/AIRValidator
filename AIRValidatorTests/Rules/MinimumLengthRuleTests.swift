//
//  MinimumLengthRuleTests.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 10/5/15.
//  Copyright © 2015 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import XCTest
@testable import AIRValidator

class MinimumLengthRuleTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testValid() {
        measureBlock {
            let value = "ABCDE"
            switch value.validate([MinimumLengthRule(5)]) {
            case .Valid:
                break
            case .Invalid(_):
                XCTFail("should be valid")
            }
        }
    }
    
    func testInvalid() {
        measureBlock {
            let value = "ABCDE"
            switch value.validate([MinimumLengthRule(6)]) {
            case .Valid:
                XCTFail("should be invalid")
            case .Invalid(let rules):
                XCTAssertEqual(rules.count, 1)
                XCTAssertTrue(rules[0] is MinimumLengthRule)
            }
        }
    }
}
