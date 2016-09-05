//
//  MinimumLengthRule.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 10/5/15.
//  Copyright © 2015 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import Foundation

public struct MinimumLengthRule: Rule {
    fileprivate let minimumLength: UInt
    public init(_ minimumLength: UInt) {
        self.minimumLength = minimumLength
    }
    
    public func validate<T>(_ value: T) -> Bool {
        switch value {
        case let value as String:
            return value.characters.count >= Int(minimumLength)
        default:
            return false
        }
    }
}
