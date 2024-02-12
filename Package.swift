// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseDeskSwiftSPM",
    defaultLocalization: "en",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UseDeskSwift",
            targets: ["UseDeskSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/socketio/socket.io-client-swift", .upToNextMajor(from: "16.0.0")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/bmoliveira/MarkdownKit.git", .upToNextMajor(from: "1.7.0")),
        .package(url: "https://github.com/shimastripe/Texture.git", .upToNextMajor(from: "3.1.1")),
        .package(url: "https://github.com/ashleymills/Reachability.swift", .upToNextMajor(from: "5.2.0")),
        .package(url: "https://github.com/scinfu/SwiftSoup.git", .upToNextMajor(from: "2.7.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UseDeskSwift",
            dependencies: [
                .product(name: "AsyncDisplayKit", package: "Texture"),
                .product(name: "MarkdownKit", package: "MarkdownKit"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "SocketIO", package: "socket.io-client-swift"),
                .product(name: "Reachability", package: "Reachability.swift"),
                .product(name: "SwiftSoup", package: "SwiftSoup")
            ],
            path: "",
            exclude: ["Example"],
            sources: ["UseDesk/Classes", "Core"],
            resources: [.copy("UseDesk/Assets")]
        ),
        .testTarget(
            name: "UseDeskSwiftTests",
            dependencies: ["UseDeskSwift"],
            path: "UseDesk/Tests"
        )
    ]
)
