//
//  RequiredRuleTests.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 8/31/15.
//  Copyright © 2015 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import XCTest
@testable import AIRValidator

final class RequiredRuleTests: XCTestCase {
    func testEmptyString() {
        let value = ""
        switch value.validate([RequiredRule()]) {
        case .valid:
            XCTFail()
        case .invalid(let rules):
            XCTAssert(rules[0] is RequiredRule)
        }
    }

    func testThatNonEmptyStringDoesNotThrowError() {
        let value = "valid string"
        switch value.validate([RequiredRule()]) {
        case .valid:
            break
        case .invalid(_):
            XCTFail()
        }
    }
    
    func testThatIntegerThrowsError() {
        let value = 1
        switch value.validate([RequiredRule()]) {
        case .valid:
            XCTFail()
        case .invalid(let rules):
            XCTAssert(rules[0] is RequiredRule)
        }
    }
}
