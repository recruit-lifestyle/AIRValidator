//
//  ValidatableTests.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 9/21/16.
//  Copyright © 2016 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import XCTest
@testable import AIRValidator

final class ValidatableTests: XCTestCase {
    func testMultipleRules() {
        let string = "string"
        let rules = [MinimumLengthRule(1), RequiredRule()] as [Rule]
        _ = string.validate(rules)
    }
}
