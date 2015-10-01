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
Copyright 2015 RECRUIT LIFESTYLE CO., LTD.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
