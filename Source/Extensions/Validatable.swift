//
//  Validatable.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 8/31/15.
//  Copyright © 2015 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import Foundation

/**
Validatable protocol.

```swift
// Example:

let value = "Validatable String"
switch value.validate([RequiredRule()]) {
case .Valid:
    break
case .Invalid(let rules):
    // do something...
}
```
*/
public protocol Validatable {
}

extension Validatable {
    public func validate(_ rules: [Rule]) -> Result {
        let errors = rules.filter { !$0.validate(self) }
        if errors.isEmpty {
            return .valid
        }
        return .invalid(errors)
    }
}

extension String: Validatable {}
extension Int: Validatable {}
extension Int8: Validatable {}
extension Int16: Validatable {}
extension Int32: Validatable {}
extension Int64: Validatable {}
extension UInt: Validatable {}
extension UInt8: Validatable {}
extension UInt16: Validatable {}
extension UInt32: Validatable {}
extension UInt64: Validatable {}
