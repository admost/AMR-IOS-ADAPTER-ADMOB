![AMRAdapterAdmob: Admost Mediation iOS SDK](https://www.admost.com/img/logo.svg)

[![Swift](https://img.shields.io/badge/Swift-5.0_6.0-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.0_6.0-orange?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-iOS-yellowgreen?style=flat-square)](https://img.shields.io/badge/Platforms-iOS-yellowgreen?style=flat-square)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/AMRAdapterAdmob.svg?style=flat-square)](https://img.shields.io/cocoapods/v/AMRAdapterAdmob.svg)
[![SPM Compatible](https://img.shields.io/badge/SPM-compatible-brightgreen?style=flat-square)](https://img.shields.io/badge/SPM-compatible-brightgreen?style=flat-square)

# AMRAdapterAdmob

AdMob adapter for AMRSDK. Allows publishers to mediate AdMob banner, native, interstitial and video ads in AMRSDK.

## Requirements

- iOS 13.0+
- Xcode 26+

## Installation

### Swift Package Manager

Add the following to your `Package.swift` dependencies:

```swift
https://github.com/admost/AMR-IOS-ADAPTER-ADMOB.git
```

Then add `AMRAdapterAdmob` to your target dependencies:

```swift
.product(name: "AMRAdapterAdmob", package: "AMR-IOS-ADAPTER-ADMOB")
```

Or in Xcode: **File → Add Package Dependencies** and enter the repository URL.

### CocoaPods

Add the following to your `Podfile`:

```ruby
pod 'AMRAdapterAdmob'
```

Then run:

```sh
pod install
```

## License

Copyright 2016 Admost Mediation Limited. All rights reserved.

## Contact

- **Website:** [admost.com](http://www.admost.com/)
- **Email:** amr@admost.com
- **Documentation:** [admost.github.io/amrios](https://admost.github.io/amrios/)
