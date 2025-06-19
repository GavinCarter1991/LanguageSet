# LanguageSet

[![CI Status](https://img.shields.io/travis/gavin/LanguageSet.svg?style=flat)](https://travis-ci.org/gavin/LanguageSet)
[![Version](https://img.shields.io/cocoapods/v/LanguageSet.svg?style=flat)](https://cocoapods.org/pods/LanguageSet)
[![License](https://img.shields.io/cocoapods/l/LanguageSet.svg?style=flat)](https://cocoapods.org/pods/LanguageSet)
[![Platform](https://img.shields.io/cocoapods/p/LanguageSet.svg?style=flat)](https://cocoapods.org/pods/LanguageSet)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```
// 获取支持的语言列表
[LanguageSet sharedManager].supportedLanguages

// 设置应用语言
[[LanguageSet sharedManager] setLanguage:selectedLanguage];
```

## Requirements

## Installation

LanguageSet is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LanguageSet'
```

## Author

gavin, kindyourself@163.com

## License

LanguageSet is available under the MIT license. See the LICENSE file for more info.
