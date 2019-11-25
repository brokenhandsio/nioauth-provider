// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "NIOAuthProvider",
    products: [
        .library(name: "NIOAuthProvider", targets: ["NIOAuthProvider"]),
    ],
    dependencies: [
    	.package(url: "https://github.com/apple/swift-nio.git", .upToNextMajor(from: "2.10.0")),
    ],
    targets: [
        .target(name: "NIOAuthProvider", dependencies: ["NIO"]),
        .testTarget(name: "NIOAuthProviderTests", dependencies: ["NIOAuthProvider"]),
    ]
)
