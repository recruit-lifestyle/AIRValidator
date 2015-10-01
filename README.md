# AIRValidator
Extendable, rule-based validator for Swift.

## Usage

### Validating
```swift
let value = "not empty"
/*
`validate` method:
- parameter rules: Array of Rules.
- returns: Result pattern
  * Valid
  * Invalid([Rule]): returns invalid rules
*/
switch value.validate([RequiredRule()]) {
case .Valid:
  print('Valid')
case .Invalid(let rules):
  print('Invalid for rules: \(rules)')
}
```

### New Rule
```swift
public struct RequiredRule: Rule {
  public func validate<T>(value: T) -> Bool {
    switch value {
    // Write cases for supporting types
    case let value as String:
      return !value.isEmpty
    default:
        // otherwise return false
        return false
    }
  }
}
```

## Installation
### CocoaPods

```ruby
pod 'AIRValidator'
```

## Credit
AIRValidator is owned and maintained by RECRUIT LIFESTYLE CO., LTD.

AIRValidator was originally created by [Yuki Nagai](https://github.com/uny).

## License
```
The MIT License (MIT)

Copyright (c) 2015 RECRUIT LIFESTYLE CO., LTD.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
