//
//  RequiredRule.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 8/31/15.
//  Copyright © 2015 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import Foundation

public struct RequiredRule: Rule {
    public init() {
    }
    
    public func validate<T>(_ value: T) -> Bool {
        guard let value = value as? String else { return false }
        return !value.isEmpty
    }
}
