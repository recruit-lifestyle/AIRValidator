//
//  MinimumLengthRuleTests.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 10/5/15.
//  Copyright © 2015 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import XCTest
@testable import AIRValidator

final class MinimumLengthRuleTests: XCTestCase {
    func testValid() {
        let value = "ABCDE"
        switch value.validate([MinimumLengthRule(5)]) {
        case .valid:
            break
        case .invalid(_):
            XCTFail()
        }
    }
    
    func testInvalid() {
        let value = "ABCDE"
        switch value.validate([MinimumLengthRule(6)]) {
        case .valid:
            XCTFail()
        case .invalid(let rules):
            XCTAssertTrue(rules[0] is MinimumLengthRule)
        }
    }
}
