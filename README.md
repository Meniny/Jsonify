
<p align="center">
  <img src="https://ooo.0o0.ooo/2017/04/23/58fc5b40945aa.png" alt="Jsonify">
  <br/><a href="https://github.com/Meniny/Jsonify-in-Swift/archive/master.zip">
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-brightgreen.svg">
  <img alt="Author" src="https://img.shields.io/badge/author-Meniny-blue.svg">
  <img alt="Build Passing" src="https://img.shields.io/badge/build-passing-brightgreen.svg">
  <img alt="Swift" src="https://img.shields.io/badge/swift-3.0%2B-orange.svg">
  <br/>
  <img alt="Platforms" src="https://img.shields.io/badge/platform-macOS%20%7C%20iOS-lightgrey.svg">
  <img alt="MIT" src="https://img.shields.io/badge/license-MIT-blue.svg">
  <br/>
  <img alt="Cocoapods" src="https://img.shields.io/badge/cocoapods-compatible-brightgreen.svg">
  <img alt="Carthage" src="https://img.shields.io/badge/carthage-working%20on-red.svg">
  <img alt="SPM" src="https://img.shields.io/badge/swift%20package%20manager-working%20on-red.svg">
  </a>
</p>

# Introduction

## What's this?

Jsonify is a delightful JSON parsing networking framework for iOS/macOS platforms written in Swift.

## Requirements

* iOS 8.0+
* macOS 10.10+
* Xcode 8 with Swift 3

## Installation

#### CocoaPods

```ruby
pod 'Jsonify'
```

#### Manually: Framework

First, excute this:

```bash
git submodule add https://github.com/Meniny/Jsonify-in-Swift.git
```

then:

* Drag `Jsonify-in-Swift/Jsonify/Jsonify.xcodeproj` into your project
* Go to `PROJECT`->`TARGETS`->[YOUR_TARGET_NAME]->`General`->`Embedded Binaries`
* Click `＋`
* Select `Jsonify.frameWork`, click `Add`

#### Manually: Source Files

Copy all files in the `./Jsonify/Jsonify` directory into your project.

## Contribution

You are welcome to fork and submit pull requests.

## License

Fire is open-sourced software, licensed under the `MIT` license.

## Sample

```swift
let jsonString = "[ { \"id\": 1, \"name\": \"Meniny\", }, ]"
let array = Jsonify(string: jsonString)
for i in array.arrayValue {
    let id = i["id"].intValue
    let name = i["name"].stringValue
    print("id=\(id)\nname=\(name)")
}
```
