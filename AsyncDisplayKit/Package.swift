// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AsyncDisplayKit",
    products: [
        .library(
            name: "AsyncDisplayKit",
            targets: ["AsyncDisplayKit"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "AsyncDisplayKit", path: "AsyncDisplayKit.xcframework.zip")
    ]
)
