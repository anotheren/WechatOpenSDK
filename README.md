# WechatOpenSDK

## What's it?

* Rebuild libWeChatSDK.a to WechatOpenSDK.xcframework.
* Modules support and easy for Swift/SPM to use.
* Support ios-arm64/ios-x86_64-simulator.
* No support ios-arm64-simulator as libWeChatSDK.a do not support it.
* Require iOS 13+/Xcode 13+

## Installation

### Swift Package Manager

```
dependencies: [
    .package(url: "https://github.com/anotheren/WechatOpenSDK.git", .upToNextMajor(from: "1.9.2"))
]
```

### Manually Build

* Download the latest WechatOpenSDK from **[developers.weixin.qq.com](https://developers.weixin.qq.com/doc/oplatform/Downloads/iOS_Resource.html)**
* unzip and move files to `WechatOpenSDK/Library/`
* run `create-xcframework.sh`
