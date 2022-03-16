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
                      url: "https://github.com/anotheren/WechatOpenSDK/releases/download/1.9.2/WechatOpenSDK.xcframework.zip",
                      checksum: "66e8eebfc8724ec5083670052ed1b0a49e0eb168c94cea32e4a649ea635284a0"),
    ]
)
