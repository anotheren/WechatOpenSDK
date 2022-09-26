// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WechatOpenSDK",
    products: [
        .library(name: "WechatOpenSDK", targets: ["WechatOpenSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "WechatOpenSDK",
                      url: "https://github.com/anotheren/WechatOpenSDK/releases/download/1.9.6/WechatOpenSDK.xcframework.zip",
                      checksum: "143cbdc3ed5b126b9d0289c4f11a74486d9ed068cb97bc991d09a4da3a6abc36"),
    ]
)
