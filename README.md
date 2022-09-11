[![Swift](https://img.shields.io/badge/Swift-5.3_5.4_5.5_5.6_5.7-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.3_5.4_5.5_5.6-Orange?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-iOS-yellowgreen?style=flat-square)](https://img.shields.io/badge/Platforms-macOS_iOS_tvOS_watchOS_Linux_Windows-Green?style=flat-square)
![CocoaPods Compatible](https://img.shields.io/cocoapods/v/JoinStoriesSDK.svg?style=flat-square)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)

Join Stories SDK is a library written in Swift to display stories thumbnails, full screen stories.

- [Dependencies](#dependencies)
- [Requirements](#requirements)
- [Installation](#installation)
- [License](#license)
  
## Dependencies

The Join Stories SDK is packaged into a binary target and has subdependencies such as:

- [AlamofireImage](https://github.com/Alamofire/AlamofireImage) - An image library including image response serializers, `UIImage` and `UIImageView` extensions, custom image filters, an auto-purging in-memory cache, and a priority-based image downloading system.
- [Alamofire](https://github.com/Alamofire/Alamofire) - Alamofire is an HTTP networking library written in Swift.
- [SnapKit](https://github.com/SnapKit/SnapKit) - SnapKit is a DSL to make Auto Layout easy on both iOS and OS X.
- [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) - SwiftyJSON makes it easy to deal with JSON data in Swift.


## Requirements

| Platform | Minimum Swift Version | Installation |
| --- | --- | --- |
| iOS 11.0+ | 5.3 | [CocoaPods](#cocoapods), [Swift Package Manager](#swift-package-manager), [Manual](#manually) | Fully Tested |

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate JoinStoriesSDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'JoinStoriesSDK'
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. 

Once you have your Swift package set up, adding JoinStoriesSDK as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/teamjoin/join-stories-sdk-ios-binary", .upToNextMajor(from: "X.X.X"))
]
```

### Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate JoinStoriesSDK into your project manually.

#### Embedded Framework

- Download the zip file from the Package.swift under `binartyTarget` up Terminal, 

- Unzip the file appearing as an xcframework file

- Add JoinStoriesSDK.xcframework into your project

- Add external dependencies as described in the `Package.swift` file into Package dependencies of your project

```swift
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
        .package(url: "https://github.com/Alamofire/AlamofireImage.git", .upToNextMajor(from: "4.2.0")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0")
    ],
```

- And that's it!

## License

This project is licensed under the Intellectual Property Licensing and Confidentiality Agreements

```
Copyright (C) Join, Inc - All Rights Reserved  
Unauthorized copying of this file, via any medium is strictly prohibited  
Proprietary and confidential  
Written by Dimitri COMBE, October 2021  
```