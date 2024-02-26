// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseDeskSwiftSPM",
    defaultLocalization: "en",
    products: [
        .library(
            name: "UseDeskSwift",
            targets: ["UseDeskSwift"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/socketio/socket.io-client-swift", .upToNextMajor(from: "16.0.0")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/bmoliveira/MarkdownKit.git", .upToNextMajor(from: "1.7.0")),
        .package(url: "https://github.com/ashleymills/Reachability.swift", .upToNextMajor(from: "5.2.0")),
        .package(url: "https://github.com/scinfu/SwiftSoup.git", .upToNextMajor(from: "2.7.0")),
        .package(path: "AsyncDisplayKit")
    ],
    targets: [
        .target(
            name: "UseDeskSwift",
            dependencies: [
                .product(name: "MarkdownKit", package: "MarkdownKit"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "SocketIO", package: "socket.io-client-swift"),
                .product(name: "Reachability", package: "Reachability.swift"),
                .product(name: "SwiftSoup", package: "SwiftSoup"),
                .product(name: "AsyncDisplayKit", package: "AsyncDisplayKit")
            ],
            path: "",
            exclude: ["Example"],
            sources: ["UseDesk/Classes", "Core"],
            resources: [.copy("UseDesk/Assets")]
        )
    ]
)
