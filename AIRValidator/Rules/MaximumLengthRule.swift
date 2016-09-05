//
//  MaximumLengthRule.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 10/5/15.
//  Copyright © 2015 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import Foundation

public struct MaximumLengthRule: Rule {
    fileprivate let maximumLength: UInt
    public init(_ maximumLength: UInt) {
        self.maximumLength = maximumLength
    }
    
    public func validate<T>(_ value: T) -> Bool {
        switch value {
        case let value as String:
            return value.characters.count <= Int(maximumLength)
        default:
            return false
        }
    }
}
