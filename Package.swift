// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "vapor-protobuf",
    products: [
        .library(
            name: "VaporProtocolBuffers",
            targets: ["VaporProtocolBuffers"]),
    ],
    dependencies: [
		.package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0")
    ],
    targets: [
        .target(
            name: "VaporProtocolBuffers",
            dependencies: ["SwiftProtobuf"]),
        .testTarget(
            name: "VaporProtocolBuffersTests",
            dependencies: ["VaporProtocolBuffers"]),
    ]
)
