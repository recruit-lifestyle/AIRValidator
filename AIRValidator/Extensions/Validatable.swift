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
        var errors = [Rule]()
        for rule in rules {
            if !rule.validate(self) {
                errors.append(rule)
            }
        }
        if errors.isEmpty {
            return Result.valid
        }
        return Result.invalid(errors)
    }
}
