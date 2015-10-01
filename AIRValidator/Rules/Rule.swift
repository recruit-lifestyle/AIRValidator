//
//  Rule.swift
//  AIRValidator
//
//  Created by Yuki Nagai on 8/31/15.
//  Copyright © 2015 Recruit Lifestyle Co., Ltd. All rights reserved.
//

import Foundation

/**
You can make custom rules by implementing this protocol.

* [jpotts18/SwiftValidator](https://github.com/jpotts18/SwiftValidator)
* [groue/GRValidation](https://github.com/groue/GRValidation)

```swift
struct SampleRule: Rule {
    func validate<T>(value: T) -> Bool {
        switch value {
            case let value as String:
                // handle supporting types
                return value == "Sample String"
            default:
                // return false for unsupported types
                return false
        }
    }
}
```
*/
public protocol Rule {
    func validate<T>(value: T) -> Bool
}
